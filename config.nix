{
  indexHTML = ''
  <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"$if(lang)$ lang="$lang$" xml:lang="$lang$"$endif$$if(dir)$ dir="$dir$"$endif$>
  <head>
    <title>$title$</title>
    $if(author)$
    <meta name="owner" content="$author$">
    <meta name="designer" content="$author$">
    $for(author)$
    <meta name="author" content="$author$">
    $endfor$
    <meta name="copyright" content="$author$">
    $endif$
    $if(date)$
    <meta name="date" content="$date$">
    <meta name="revised" content="$date$">
    $endif$
    $if(description)$
    <meta name="description" content="$description$">
    $endif$
    $if(keywords)$
    <meta name="keywords" content="$for(keywords)$$keywords$$sep$, $endfor$">
    $endif$
    <meta name="generator" content="pandoc"> <!-- template by Timo Sarkar -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    $if(lang)$
    <meta name="language" content=”$lang$”>
    <meta http-equiv="content-language" content=”$lang$”>
    $endif$
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta charset="utf-8">
    $for(css)$
    <link rel="stylesheet" href="$css$">
    $endfor$
  </head>
  <body>
    $if(include-before)$
    $for(include-before)$
        $include-before$
    $endfor$
    $endif$
    <main>
      $body$
    </main>
    $if(include-after)$
        $for(include-after)$
            $include-after$
        $endfor$
    $endif$
  </body>
</html>
  '';

  headerHTML = ''
<header class="wrapper">
  <h1 id="site-title">Timo Sarkar</h1>
  <nav>
    <ul id="site-menu">
      <li><a href="articles.html">Articles</a></li>
      <li><a href="links.html">Links</a></li>
      <li><a href="whoami.html">Whoami</a></li>
    </ul>
  </nav>
</header>
  '';

  articlesHTML = ''
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"$if(lang)$ lang="$lang$" xml:lang="$lang$"$endif$$if(dir)$ dir="$dir$"$endif$>
  <head>
    <title>$title$</title>
    $if(author)$
    <meta name="owner" content="$author$">
    <meta name="designer" content="$author$">
    $for(author)$
    <meta name="author" content="$author$">
    $endfor$
    <meta name="copyright" content="$author$">
    $endif$
    $if(date)$
    <meta name="date" content="$date$">
    <meta name="revised" content="$date$">
    $endif$
    $if(description)$
    <meta name="description" content="$description$">
    $endif$
    $if(keywords)$
    <meta name="keywords" content="$for(keywords)$$keywords$$sep$, $endfor$">
    $endif$
    <meta name="generator" content="pandoc"> <!-- template by Timo Sarkar -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    $if(lang)$
    <meta name="language" content=”$lang$”>
    <meta http-equiv="content-language" content=”$lang$”>
    $endif$
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta charset="utf-8">
    $for(css)$
    <link rel="stylesheet" href="$css$">
    $endfor$
  </head>
  <body>
    <main>
        $if(title)$
        <header>
            <h1 id="content-title">$title$</h1>
            <nav><a href="index.html"><img src="https://thinkmoult.com/gifs/back.gif" alt="Back" class="gif" /> Back to homepage</a></nav>

            $if(subtitle)$
            <p class="content-header subtitle">$subtitle$</p>
            $endif$
            $for(author)$
            <p class="content-header author">$author$</p>
            $endfor$
            $if(date)$
            <p class="content-header date"><time datetime="$date$">$date$</time></p>
            $endif$
        </header>
        $endif$
        $body$
    </main>
    $if(include-after)$
        $for(include-after)$
            $include-after$
        $endfor$
    $endif$
  </body>
</html>
  '';

  postHTML = ''
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"$if(lang)$ lang="$lang$" xml:lang="$lang$"$endif$$if(dir)$ dir="$dir$"$endif$>
  <head>
    <title>$title$</title>
    $if(author)$
    <meta name="owner" content="$author$">
    <meta name="designer" content="$author$">
    $for(author)$
    <meta name="author" content="$author$">
    $endfor$
    <meta name="copyright" content="$author$">
    $endif$
    $if(date)$
    <meta name="date" content="$date$">
    <meta name="revised" content="$date$">
    $endif$
    $if(description)$
    <meta name="description" content="$description$">
    $endif$
    $if(keywords)$
    <meta name="keywords" content="$for(keywords)$$keywords$$sep$, $endfor$">
    $endif$
    <meta name="generator" content="pandoc"> <!-- template by Timo Sarkar -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    $if(lang)$
    <meta name="language" content=”$lang$”>
    <meta http-equiv="content-language" content=”$lang$”>
    $endif$
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta charset="utf-8">
    $for(css)$
    <link rel="stylesheet" href="$css$">
    $endfor$
  </head>
  <body>
    <main>
        $if(title)$
        <header>
            <h1 id="content-title">$title$</h1>
            <nav><a href="articles.html"><img src="https://thinkmoult.com/gifs/back.gif" alt="Back" class="gif" /> Back to articles</a></nav>

            $if(subtitle)$
            <p class="content-header subtitle">$subtitle$</p>
            $endif$
            $for(author)$
            <p class="content-header author">$author$</p>
            $endfor$
            $if(date)$
            <p class="content-header date"><time datetime="$date$">$date$</time></p>
            $endif$
            <hr>
        </header>
        $endif$
        $body$
    </main>
    $if(include-after)$
        $for(include-after)$
            $include-after$
        $endfor$
    $endif$
    <footer>
      <br>
            <hr>

            <h2>Comments</h2>
            <p>If you have any comments, please send them to
            <code>[VGltbyBTYXJrYXIgPHNhcnRpbW8xMEBnbWFpbC5jb20+]</code>. To get my email
            address from this blob you need to dehash it using base64.</p>

            <h2>License</h2>
            <p>This work is licensed under a Creative Commons
            Attribution-ShareAlike 4.0 International License, unless explicitly
            mentioned in the article.</p>
            <p>Generated by <code>nix build
            "github:jhvst/jhvst.github.io#apple-music-linux-pipewire"</code></p>
            <p>Fork at <a href="">GitHub</a></p>
  </footer>
  </body>
</html>
  '';

  stylesCSS = ''
html{padding-left:7.5pt;}html{padding-bottom:7.5pt;}html{padding-right:7.5pt;}p[class~=author]{font-weight:bold;}html{padding-top:7.5pt;}body{max-width:6.25in;}p[class~=date]{font-style:italic;}a[class~=external]{background-image:url("data:image/svg+xml,%3C%3Fxml version=\'1.0\' encoding=\'UTF-8\'%3F%3E%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'12\' height=\'12\'%3E%3Cpath fill=\'%23fff\' stroke=\'%23000\' d=\'M1.5 4.518h5.982V10.5H1.5z\'/%3E%3Cpath fill=\'%23000\' d=\'M5.765 1H11v5.39L9.427 7.937l-1.31-1.31L5.393 9.35l-2.69-2.688 2.81-2.808L4.2 2.544z\'/%3E%3Cpath fill=\'%23fff\' d=\'m9.995 2.004.022 4.885L8.2 5.07 5.32 7.95 4.09 6.723l2.882-2.88-1.85-1.852z\'/%3E%3C/svg%3E%0A");}img,body{margin-left:auto;}a[class~=external]{background-position:center right;}body,img{margin-right:auto;}img:not([class~=gif]),img{max-width:100%;}[class~=gif]{margin-left:0pt;}[class~=toclink]:not(:hover){text-decoration:none;}a[class~=external]{background-repeat:no-repeat;}a[class~=external]{padding-right:11.25pt;}[class~=toclink]:not(:hover){outline:none;}img{text-align:center;}[class~=highlight] > pre{margin-left:0;}img{display:block;}[class~=highlight] > pre{margin-bottom:0;}[class~=highlight] > pre{margin-right:0;}[class~=highlight] > pre{margin-top:0;}[class~=highlight] > pre{padding-left:.5rem;}[class~=highlight] > pre{padding-bottom:.5rem;}pre{white-space:pre-wrap;}pre{white-space:-moz-pre-wrap;}pre{white-space:-pre-wrap;}[class~=highlight] > pre{padding-right:.5rem;}[class~=highlight] > pre{padding-top:.5rem;}pre{white-space:-o-pre-wrap;}pre{word-wrap:break-word;}p,h1,h3,h5,h6,h4,h2{overflow-wrap:break-word;}[class~=highlight] > pre{overflow-x:auto;}[class~=gif]{margin-bottom:0pt;}:not(pre)>code,[class~=highlight] > pre{background-color:#eee;}img:not([class~=gif]){width:37.5pc;}img:not([class~=gif]){height:auto;}:not(pre)>code{padding-left:.020833333in;}:not(pre)>code{padding-bottom:0;}:not(pre)>code{padding-right:.020833333in;}:not(pre)>code{padding-top:0;}:not(pre)>code{font-size:.8rem;}img:not([class~=gif]){color-scheme:light;}[class~=gif]{margin-right:0pt;}[class~=gif]{margin-top:0pt;}[class~=content]{max-width:50rem;}[class~=content]{line-height:1.4;}.toclink{color:black;}@media screen and (min-width:63rem){.content .aside{display:inline;}.content .aside{float:right;}.content .aside{position:relative;}.content .aside{width:10rem;}.content .aside{margin-right:-12rem;}.content .aside{font-size:.9rem;}}
'';

  filterLUA = ''
-- wrap_code.lua

function CodeBlock(block)
    local classes = block.classes
    local attributes = {}
    if #classes > 0 then
      table.insert(attributes, 'class="' .. table.concat(classes, " ") .. '"')
    end
    local code = block.text
    return pandoc.RawBlock('html', '<div ' .. table.concat(attributes, " ") .. '><pre><code>' .. code .. '</code></pre></div>')
  end  
'';

}
