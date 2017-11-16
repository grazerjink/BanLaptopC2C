<%-- 
    Document   : dashboard-navbar-user
    Created on : Nov 15, 2017, 10:04:56 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ks-navbar-menu">
    <form class="ks-search-form">
        <a class="ks-search-open" href="#">
            <span class="la la-search"></span>
        </a>
        <div class="ks-wrapper">
            <div class="input-icon icon-right icon icon-lg icon-color-primary">
                <input id="input-group-icon-text" type="text" class="form-control" placeholder="Search...">
                <span class="icon-addon">
                    <span class="la la-search ks-icon"></span>
                </span>
            </div>
            <a class="ks-search-close" href="#">
                <span class="la la-close"></span>
            </a>
        </div>
    </form>
    <a class="nav-item nav-link" href="#">Dashboard</a>
    <div class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
            Dropdown
        </a>
        <div class="dropdown-menu ks-info" aria-labelledby="Preview">
            <a class="dropdown-item ks-active" href="#">Dropdown Link 1</a>
            <a class="dropdown-item" href="#">Dropdown Link 2</a>
            <a class="dropdown-item" href="#">Dropdown Link 3</a>
            <div class="dropdown-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    Dropdown
                </a>
                <div class="dropdown-menu" aria-labelledby="Preview">
                    <a class="dropdown-item" href="#">Dropdown Link 1</a>
                    <a class="dropdown-item" href="#">Dropdown Link 2</a>
                    <a class="dropdown-item" href="#">Dropdown Link 3</a>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-item nav-link ks-btn-action">
        <a class="btn btn-info" href="https://themeforest.net/item/kosmo-multi-purpose-responsive-bootstrap-4-admin-template-ui-framework/19506620?ref=themesanytime">Buy Now!</a>
    </div>
</div>