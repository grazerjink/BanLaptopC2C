<%-- 
    Document   : dashboard-setting-block
    Created on : Nov 16, 2017, 8:22:05 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ks-mobile-overlay"></div>
<div class="ks-settings-slide-block">
    <a class="ks-settings-slide-control">
        <span class="ks-icon la la-cog"></span>
    </a>

    <div class="ks-header">
        <span class="ks-text">Layout Options</span>
        <a class="ks-settings-slide-close-control">
            <span class="ks-icon la la-close"></span>
        </a>
    </div>

    <div class="ks-themes-list">
        <a href="../sidebar_sections-primary/index.html" class="ks-theme ks-primary ks-active"></a>
        <a href="../sidebar_sections-primary-dark/index.html" class="ks-theme ks-dark-primary"></a>
        <a href="../sidebar_sections-info/index.html" class="ks-theme ks-info"></a>
        <a href="../sidebar_sections-pink/index.html" class="ks-theme ks-blink-pink-san-marino"></a>
        <a href="../sidebar_sections-bermuda-gray/index.html" class="ks-theme ks-bermuda-gray-malachite"></a>
        <a href="../sidebar_sections-royal-blue/index.html" class="ks-theme ks-royal-blue-orchid"></a>
        <a href="../sidebar_sections-ebony-clay/index.html" class="ks-theme ks-ebony-clay-cerise-red"></a>
        <a href="../sidebar_sections-international-klein-blue/index.html" class="ks-theme ks-international-klein-blue-dixie"></a>
        <a href="../sidebar_sections-jungle-green/index.html" class="ks-theme ks-jungle-green-chambray"></a>
        <a href="../sidebar_sections-voodoo/index.html" class="ks-theme ks-voodoo-medium-purple"></a>
        <a href="../sidebar_sections-cornflower-blue/index.html" class="ks-theme ks-cornflower-blue-ecstasy"></a>
        <a href="../sidebar_sections-purple/index.html" class="ks-theme ks-purple-mandy"></a>
        <a href="../sidebar_sections-oslo-gray/index.html" class="ks-theme ks-oslo-gray-royal-blue"></a>
        <a href="../sidebar_sections-astronaut-blue/index.html" class="ks-theme ks-astronaut-blue-persian-green"></a>
        <a href="../sidebar_sections-old-brick/index.html" class="ks-theme ks-old-brick"></a>
        <a href="../sidebar_sections-white/index.html" class="ks-theme ks-white"></a>
    </div>

    <ul class="ks-settings-list">
        <li>
            <span class="ks-text">Collapsed Sidebar</span>
            <label class="ks-checkbox-slider ks-on-off ks-primary ks-sidebar-checkbox-toggle">
                <input type="checkbox" value="1">
                <span class="ks-indicator"></span>
                <span class="ks-on">On</span>
                <span class="ks-off">Off</span>
            </label>
        </li>
        <li>
            <span class="ks-text">Fixed page header</span>
            <label class="ks-checkbox-slider ks-on-off ks-primary ks-page-header-checkbox-toggle">
                <input type="checkbox" value="0" checked>
                <span class="ks-indicator"></span>
                <span class="ks-on">On</span>
                <span class="ks-off">Off</span>
            </label>
        </li>
        <li>
            <span class="ks-text">Dark/Light Sidebar</span>
            <label class="ks-checkbox-slider ks-on-off ks-primary ks-sidebar-style-checkbox-toggle">
                <input type="checkbox" value="0" checked>
                <span class="ks-indicator"></span>
                <span class="ks-on">On</span>
                <span class="ks-off">Off</span>
            </label>
        </li>
        <li>
            <span class="ks-text">White/Gray Content Background</span>
            <label class="ks-checkbox-slider ks-on-off ks-primary ks-content-bg-checkbox-toggle">
                <input type="checkbox" value="0" checked>
                <span class="ks-indicator"></span>
                <span class="ks-on">On</span>
                <span class="ks-off">Off</span>
            </label>
        </li>
    </ul>
</div>