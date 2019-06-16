[#-------------- RENDERING --------------]
<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><![endif]-->
<!--[if gt IE 8]><!--><html class="no-js" xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}"><!--<![endif]-->
<head>
    [@cms.page /]

    [@cms.area name="htmlHeader"/]
</head>
<body>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/%22%3Eupgrade your browser</a> to improve your experience.</p>
<![endif]-->
[@cms.area name="navigation"/]

[@cms.area name="main"/]

[@cms.area name="footer"/]

[#-- We're using the prototype's jsFiles to be rendered at the bottom of the page --]
[#if def.jsFiles??]
    [#list def.jsFiles as jsFile]
        <script type="text/javascript" src="${jsFile.link}"></script>
    [/#list]
[/#if]

</body>
</html>