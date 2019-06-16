[#-------------- ASSIGNMENTS ---------------]
[#assign cssClass=def.parameters.cssClass!"col-lg-12"]

[#-------------- RENDERING --------------]
<div class="${cssClass}">
[#list components as component ]
    [@cms.component content=component /]
[/#list]
</div>
[#-------------- ASSIGNMENTS --------------]
[#-- Page's model & definition, based on the rendering hierarchy and not the node hierarchy --]
[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]
[#assign pageDef = ctx.pageDef!]


[#-------------- RENDERING --------------]
<title>${content.windowTitle!content.title!}</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="${content.description!""}" />
<meta name="keywords" content="${content.keywords!""}" />
<meta name="author" content="NeuMerlin Co, Ltd." />
<meta name="generator" content="Powered by Magnolia - Intuitive Opensource CMS" />

<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<![endif]-->

<link rel="icon" href="${ctx.contextPath}/.resources/${theme.name}/favicon.ico" />
