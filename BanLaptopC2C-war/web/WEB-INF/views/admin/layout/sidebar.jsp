<%-- 
    Document   : sidebar
    Created on : Nov 12, 2017, 9:12:21 PM
    Author     : Vivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="left">
    <div class="media user-media bg-dark dker">
        <div class="user-media-toggleHover">
            <span class="fa fa-user"></span>
        </div>
        <div class="user-wrapper bg-dark">
            <a class="user-link" href="">
                <img class="media-object img-thumbnail user-img" alt="User Picture" src="assets/admin/img/user.gif">
                <span class="label label-danger user-label">16</span>
            </a>

            <div class="media-body">
                <h5 class="media-heading">Archie</h5>
                <ul class="list-unstyled user-info">
                    <li><a href="">Administrator</a></li>
                    <li>Last Access : <br>
                        <small><i class="fa fa-calendar"></i>&nbsp;16 Mar 16:32</small>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- #menu -->
    <ul id="menu" class="bg-blue dker">
        <li class="nav-header">Menu</li>
        <li class="nav-divider"></li>
        <li class="">
            <a href="admin/danhsach-nguoidung/">
                <i class="fa fa-dashboard"></i><span class="link-title">&nbsp; Quản lí người dùng</span>
            </a>
        </li>
        <li class="">
            <a href="admin/danhsach-phieumuahang/">
                <i class="fa fa-building "></i>
                <span class="link-title">Thống kê hóa đơn</span>
                <span class="fa arrow"></span>
            </a>
            
        </li>
        <li class="">
            <a href="admin/danhsach-phieumuatin/">
                <i class="fa fa-tasks"></i>
                <span class="link-title">Quản lí phiếu mua tin</span>
                <span class="fa arrow"></span>
            </a>
        </li>
        <li class="">
            <a href="admin/thongke-danhgia/">
                <i class="fa fa-pencil"></i>
                <span class="link-title">
                    Thống kê đánh giá
                </span>
                <span class="fa arrow"></span>
            </a>
           
        </li>
        <li>
            <a href="admin/danhsach-nguoiban/">
                <i class="fa fa-table"></i>
                <span class="link-title">Quản lí người bán</span>
            </a>
        </li>
        <li>
            <a href="typography.html">
                <i class="fa fa-font"></i>
                <span class="link-title">
                    Typography
                </span>  </a>
        </li>
        <li>
            <a href="maps.html">
                <i class="fa fa-map-marker"></i><span class="link-title">
                    Maps
                </span>
            </a>
        </li>
        <li>
            <a href="chart.html">
                <i class="fa fa fa-bar-chart-o"></i>
                <span class="link-title">
                    Charts
                </span>
            </a>
        </li>
        <li>
            <a href="calendar.html">
                <i class="fa fa-calendar"></i>
                <span class="link-title">
                    Calendar
                </span>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-exclamation-triangle"></i>
                <span class="link-title">
                    Error Pages
                </span>
                <span class="fa arrow"></span>
            </a>
            <ul class="collapse">
                <li>
                    <a href="403.html">
                        <i class="fa fa-angle-right"></i>&nbsp;403</a>
                </li>
                <li>
                    <a href="404.html">
                        <i class="fa fa-angle-right"></i>&nbsp;404</a>
                </li>
                <li>
                    <a href="405.html">
                        <i class="fa fa-angle-right"></i>&nbsp;405</a>
                </li>
                <li>
                    <a href="500.html">
                        <i class="fa fa-angle-right"></i>&nbsp;500</a>
                </li>
                <li>
                    <a href="503.html">
                        <i class="fa fa-angle-right"></i>&nbsp;503</a>
                </li>
                <li>
                    <a href="offline.html">
                        <i class="fa fa-angle-right"></i>&nbsp;offline</a>
                </li>
                <li>
                    <a href="countdown.html">
                        <i class="fa fa-angle-right"></i>&nbsp;Under Construction</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="grid.html">
                <i class="fa fa-columns"></i>
                <span class="link-title">
                    Grid
                </span>
            </a>
        </li>
        <li>
            <a href="blank.html">
                <i class="fa fa-square-o"></i>
                <span class="link-title">
                    Blank Page
                </span>
            </a>
        </li>
        <li class="nav-divider"></li>
        <li>
            <a href="login.html">
                <i class="fa fa-sign-in"></i>
                <span class="link-title">
                    Login Page
                </span>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-code"></i>
                <span class="link-title">
                    Unlimited Level Menu
                </span>
                <span class="fa arrow"></span>
            </a>
            <ul class="collapse">
                <li>
                    <a href="javascript:;">Level 1  <span class="fa arrow"></span>  </a>
                    <ul class="collapse">
                        <li> <a href="javascript:;">Level 2</a>  </li>
                        <li> <a href="javascript:;">Level 2</a>  </li>
                        <li>
                            <a href="javascript:;">Level 2  <span class="fa arrow"></span>  </a>
                            <ul class="collapse">
                                <li> <a href="javascript:;">Level 3</a>  </li>
                                <li> <a href="javascript:;">Level 3</a>  </li>
                                <li>
                                    <a href="javascript:;">Level 3  <span class="fa arrow"></span>  </a>
                                    <ul class="collapse">
                                        <li> <a href="javascript:;">Level 4</a>  </li>
                                        <li> <a href="javascript:;">Level 4</a>  </li>
                                        <li>
                                            <a href="javascript:;">Level 4  <span class="fa arrow"></span>  </a>
                                            <ul class="collapse">
                                                <li> <a href="javascript:;">Level 5</a>  </li>
                                                <li> <a href="javascript:;">Level 5</a>  </li>
                                                <li> <a href="javascript:;">Level 5</a>  </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li> <a href="javascript:;">Level 4</a>  </li>
                            </ul>
                        </li>
                        <li> <a href="javascript:;">Level 2</a>  </li>
                    </ul>
                </li>
                <li> <a href="javascript:;">Level 1</a>  </li>
                <li>
                    <a href="javascript:;">Level 1  <span class="fa arrow"></span>  </a>
                    <ul class="collapse">
                        <li> <a href="javascript:;">Level 2</a>  </li>
                        <li> <a href="javascript:;">Level 2</a>  </li>
                        <li> <a href="javascript:;">Level 2</a>  </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
    <!-- /#menu -->
</div>
