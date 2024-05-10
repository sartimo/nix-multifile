# default.nix

{ pkgs ? import <nixpkgs> {} }:

let
  # Import the other Nix file where the global variable is defined
  configFile = ./config.nix;
  config = import configFile;

  # Define the install phase where we output the value of the imported variable
  installPhase = ''
    mkdir -p $out
    mkdir -p $out/templates
    mkdir -p $out/public

    $config.indexHTML >> $out/templates/index.html
    $config.headerHTML >> $out/templates/header.html
    $config.postHTML >> $out/templates/post.html
    $config.stylesCSS >> $out/public/styles.css
    $config.filterLUA >> $out/filter.lua
    '';

  buildPhase = ''
    cd $out
    # generate index page
    $pkgs.pandoc/bin/pandoc articles/index.md -B templates/header.html --template templates/index.html -o public/index.html -c public/styles.css
    sed -i "s/…/.../g" public/index.html
    
    # generate articles list/archive
    archive_index_md = articles/pages/articles.md
    echo "---" > $archive_index_md
    echo "title: Articles" >> $archive_index_md
    echo "---" >> $archive_index_md
    for post in $(find articles/posts/ -name "*.md" | sort -r)
    do
      date=$(date -d $(grep -m 1 "date: " $post | cut -d " " -f 2) +%F)
      title=$(grep -m 1 "title: " $post | cut -d " " -f 2-)
      link=$(basename $post | sed -E "s/^[0-9-]+//" | sed -E "s/md$/html/")
      description=$(grep -m 1 "description: " $post | cut -d " " -f 2-)
      echo "- [$title]($link) <em>$date</em><br/>$description<br/><br>" >> $archive_index_md
    done

    # render articles list/archive in html
    $pkgs.pandoc/bin/pandoc articles/pages/articles.md --template templates/articles.html -o public/articles.html -c public/styles.css
    sed -i "s/…/.../g" public/articles.html
    rm articles/pages/articles.md
  
    # render pages/*.md in html
    for input_page in $(find articles/pages -name "*.md")
    do
      output_page=public/$(basename $input_page | sed -E "s/^[0-9-]+//" | sed -E "s/md$/html/")
      $pkgs.pandoc/bin/pandoc $input_page --template templates/articles.html -o $output_page -c public/styles.css --lua-filter=filter.lua
      sed -i "s/…/.../g" $output_page
    done

    # render articles/posts/*.md in html
    for input_page in $(find articles/posts -name "*.md")
    do
      output_page=public/$(basename $input_page | sed -E "s/^[0-9-]+//" | sed -E "s/md$/html/")
      $pkgs.pandoc/bin/pandoc $input_page --template templates/post.html -o $output_page -c public/styles.css --lua-filter=filter.lua
      sed -i "s/…/.../g" $output_page
    done
  '';
in

pkgs.stdenv.mkDerivation {
  name = "nix-ssg";
  src = ./.;
  phases = [ "installPhase", "buildPhase" ];
  # Explicitly define the out symlink
  installPhase = installPhase;
  buildPhase = buildPhase;
  # Add Pandoc as a dependency
  buildInputs = [ pkgs.pandoc ];
}
