<%-- 
    Document   : header
    Created on : Nov 16, 2017, 8:13:34 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ks-navbar-menu">
    <form class="ks-search-form">
        <a class="ks-search-open" href="javascript:void(0);">
            <span class="la la-search"></span>
        </a>
        <div class="ks-wrapper">
            <div class="input-icon icon-right icon icon-lg icon-color-primary">
                <input id="input-group-icon-text" type="text" class="form-control" placeholder="Search...">
                <span class="icon-addon">
                    <span class="la la-search ks-icon"></span>
                </span>
            </div>
            <a class="ks-search-close" href="javascript:void(0);">
                <span class="la la-close"></span>
            </a>
        </div>
    </form>
    <a class="nav-item nav-link v2q-link" href="javascript:void(0);">Dashboard</a>
    <div class="nav-item dropdown">
        <a class="nav-link dropdown-toggle v2q-link" data-toggle="dropdown" href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
            Dropdown
        </a>
        <div class="dropdown-menu ks-info" aria-labelledby="Preview">
            <a class="dropdown-item ks-active" href="javascript:void(0);">Dropdown Link 1</a>
            <a class="dropdown-item" href="javascript:void(0);">Dropdown Link 2</a>
            <a class="dropdown-item" href="javascript:void(0);">Dropdown Link 3</a>
            <div class="dropdown-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                    Dropdown
                </a>
                <div class="dropdown-menu" aria-labelledby="Preview">
                    <a class="dropdown-item" href="javascript:void(0);">Dropdown Link 1</a>
                    <a class="dropdown-item" href="javascript:void(0);">Dropdown Link 2</a>
                    <a class="dropdown-item" href="javascript:void(0);">Dropdown Link 3</a>
                </div>
            </div>
        </div>
    </div>
</div>
