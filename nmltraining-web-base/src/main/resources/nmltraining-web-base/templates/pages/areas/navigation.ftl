[#-------------- ASSIGNMENTS --------------]
[#assign siteRoot = cmsfn.siteRoot(content)]
[#assign homeLink = cmsfn.link(siteRoot)!"/" /]
 
[#assign site = sitefn.site()!]
[#assign theme = sitefn.theme(site)!]
 
[#-------------- RENDERING --------------]
<nav class="navbar navbar-default navbar-fixed-top " role="navigation" style="clear:both;">
 
    <div class="nav-container">
        <div id="navbar" class="navbar-collapse collapse">
            <nav class="nav-ul-container">
                <ul class="navLogo">
                    <li class="navbar-title">
                        <div class="navbar-title-logo">
 
                        </div>
                    </li>
                </ul>
                <ul class="navList">
                    [#assign navParentItem = navfn.rootPage(content)!]
                    [#if navParentItem??]
                      [#assign navItems = navfn.navItems(navParentItem)]
                      [#list navItems as navItem]
                        [#assign navChilds = navfn.navItems(navItem)]
                        [#assign activeNavItemChild = false]
                        [#if navChilds?? && navChilds?size > 0]
                          [#list navChilds as child]
                            [#if navfn.isActive(content, child)]
                              [#assign activeNavItemChild = true]
                            [/#if]
                          [/#list]
                        [/#if]
                        [#assign activeNavItem = navfn.isActive(content, navItem)] [#-- Active navigation item is the one which is same as current page--]
                        [#assign openNavItem = navfn.isOpen(content, navItem)] [#-- Open navigation item is the one which is ancestor of current page--]
                        [#if activeNavItem || activeNavItemChild!false]
                            <li class="active">
                        [#elseif openNavItem]
                            <li class="open">
                        [#else]
                            <li>
                        [/#if]
                                <a href="${cmsfn.link(navItem)!}">${navItem.navigationTitle!navItem.title!navItem.@name}</a>
                            </li>
                      [/#list]
                    [/#if]
                </ul>
            </nav>
        </div>
    </div>
 
</nav>