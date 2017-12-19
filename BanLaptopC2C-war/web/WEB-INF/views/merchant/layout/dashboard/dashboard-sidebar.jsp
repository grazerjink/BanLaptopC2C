<%-- 
    Document   : dashboard-sidebar
    Created on : Nov 16, 2017, 8:23:18 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ks-column ks-sidebar ks-info">
    <div class="ks-wrapper">
        <section>
            <h5 class="ks-header">Danh mục chức năng</h5>
            <ul class="nav nav-pills nav-stacked">
                <li class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-eye"></span> 
                        <span>Quản lí đơn hàng</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="merchant/don-dat-hang/moi/">Đơn hàng mới</a>
                        <a class="dropdown-item" href="merchant/don-dat-hang/dang-giao/">Đơn hàng đang giao</a>
                        <a class="dropdown-item" href="merchant/don-dat-hang/thanh-cong/">Đơn hàng đã hoàn tất</a>
                        <a class="dropdown-item" href="merchant/don-dat-hang/huy/">Đơn hàng đã hủy</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link v2q-link dropdown-toggle"  href="javascript:void(0);" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="ks-icon la la-laptop"></span> 
                        <span>Quản lí sản phẩm</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="merchant/danh-sach-san-pham/">Danh sách sản phẩm</a>
                        <a class="dropdown-item" href="merchant/dang-tin-san-pham/">Đăng tin sản phẩm</a>
                    </div>
                </li>
            </ul>
        </section>
        <div class="ks-sidebar-extras-block">
            <div class="ks-sidebar-copyright">© 2017 V2Q MALL. All right reserved</div>
        </div>
    </div>
</div>
