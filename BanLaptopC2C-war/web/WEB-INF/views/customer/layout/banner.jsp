<%-- 
    Document   : banner
    Created on : Nov 7, 2017, 12:20:55 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="banner-grid">
    <div id="visual">
        <div class="slide-visual">
            <!-- Slide Image Area (1000 x 424) -->
            <ul class="slide-group">
                <li><img class="img-responsive" src="assets/images/ba1.jpg" alt="Dummy Image" /></li>
                <li><img class="img-responsive" src="assets/images/ba2.jpg" alt="Dummy Image" /></li>
                <li><img class="img-responsive" src="assets/images/ba3.jpg" alt="Dummy Image" /></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <script type="text/javascript" src="assets/js/pignose.layerslider.js"></script>
    <script type="text/javascript">
        //<![CDATA[
        $(window).load(function () {
            $('#visual').pignoseLayerSlider({
                play: '.btn-play',
                pause: '.btn-pause',
                next: '.btn-next',
                prev: '.btn-prev'
            });
        });
        //]]>
    </script>
</div>
