<%-- 
    Document   : go-to-top
    Created on : Dec 6, 2017, 10:15:41 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .go-to-top {
        position: fixed;
        bottom: 50px;
        right: 30px;
        z-index: 9999;
        background-color: black;
        width: 50px; 
        height: 50px;
        border-radius: 15px;
        text-align: center;
    }
    .go-to-top > a > span {
        font-size: 2em;
        color: #FDA30E;
        margin-top: 6px;
        margin-right: 2px;
    }
</style>
<div class="go-to-top">
    <a href="#!top"><span class="glyphicon glyphicon-arrow-up"></span></a>
</div>
