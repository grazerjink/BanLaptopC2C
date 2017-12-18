<%-- 
    Document   : admin-layout
    Created on : Nov 12, 2017, 8:47:40 PM
    Author     : Vivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        
        <base href="${pageContext.request.contextPath}/"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <!--IE Compatibility modes-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!--Mobile first-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Metis</title>

        <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
        <meta name="author" content="">

        <meta name="msapplication-TileColor" content="#5bc0de" />
        <meta name="msapplication-TileImage" content="assets/admin/img/metis-tile.png" />

        <!-- Bootstrap -->
        <link rel="stylesheet" href="assets/admin/lib/bootstrap/css/bootstrap.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Metis core stylesheet -->
        <link rel="stylesheet" href="assets/admin/css/main.css">

        <!-- metisMenu stylesheet -->
        <link rel="stylesheet" href="assets/admin/lib/metismenu/metisMenu.css">

        <!-- onoffcanvas stylesheet -->
        <link rel="stylesheet" href="assets/admin/lib/onoffcanvas/onoffcanvas.css">

        <!-- animate.css stylesheet -->
        <link rel="stylesheet" href="assets/admin/lib/animate.css/animate.css">
         <!-- Thư viện DataTable -->
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/datatables-net/media/css/dataTables.bootstrap4.min.css"> <!-- original -->
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/datatables-net/datatables.min.css"> <!-- customization -->
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/select2/css/select2.min.css"> <!-- Original -->
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/select2/select2.min.css"> <!-- Customization -->
        
      
        <!--jQuery -->
        <script src="assets/admin/lib/jquery/jquery.js"></script>
        <!--Bootstrap -->
        <script src="assets/admin/lib/bootstrap/js/bootstrap.js"></script>
        <!-- MetisMenu -->
        <script src="assets/admin/lib/metismenu/metisMenu.js"></script>
        <!-- onoffcanvas -->
        <script src="assets/admin/lib/onoffcanvas/onoffcanvas.js"></script>
        <!-- Screenfull -->
        <script src="assets/admin/lib/screenfull/screenfull.js"></script>
        <!-- Metis core scripts -->
        <script src="assets/admin/js/core.js"></script>
        <!-- Metis demo scripts -->
        <script src="assets/admin/js/app.js"></script>
        <script src="assets/admin/js/style-switcher.js"></script>
        
        <!-- Thư viện DataTable -->
        <script src="assets/merchant/template/libs/datatables-net/media/js/jquery.dataTables.min.js"></script>
        <script src="assets/merchant/template/libs/datatables-net/media/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/merchant/template/libs/select2/js/select2.min.js"></script>
        
        
        

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!--For Development Only. Not required -->
        <script>
            less = {
                env: "development",
                relativeUrls: false,
                rootpath: "/assets/admin/"
            };
        </script>
        <link rel="stylesheet" href="assets/admin/css/style-switcher.css">
        <link rel="stylesheet/less" type="text/css" href="assets/admin/less/theme.less">
        <script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>
    </head>
    <body>
        <div class="bg-dark dk" id="wrap">
            <jsp:include page="admin/layout/header.jsp"/>
            <!-- /#top -->
            <jsp:include page="admin/layout/sidebar.jsp"/>
            <!-- /#left -->
            <div id="content">
                <div class="outer">
                    <div class="inner bg-light lter">
                        <!-- chạy trang jsp-->
                        <jsp:include page="${param.view}"/>
                    </div>
                        
                </div>
                
            </div>
            <!-- /#content -->

            <div id="right" class="onoffcanvas is-right is-fixed bg-light" aria-expanded=false>
                <a class="onoffcanvas-toggler" href="#right" data-toggle=onoffcanvas aria-expanded=false></a>
                <br>
                <br>
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Warning!</strong> Best check yo self, you're not looking too good.
                </div>
                <!-- .well well-small -->
                <div class="well well-small dark">
                    <ul class="list-unstyled">
                        <li>Visitor <span class="inlinesparkline pull-right">1,4,4,7,5,9,10</span></li>
                        <li>Online Visitor <span class="dynamicsparkline pull-right">Loading..</span></li>
                        <li>Popularity <span class="dynamicbar pull-right">Loading..</span></li>
                        <li>New Users <span class="inlinebar pull-right">1,3,4,5,3,5</span></li>
                    </ul>
                </div>
                <!-- /.well well-small -->
                <!-- .well well-small -->
                <div class="well well-small dark">
                    <button class="btn btn-block">Default</button>
                    <button class="btn btn-primary btn-block">Primary</button>
                    <button class="btn btn-info btn-block">Info</button>
                    <button class="btn btn-success btn-block">Success</button>
                    <button class="btn btn-danger btn-block">Danger</button>
                    <button class="btn btn-warning btn-block">Warning</button>
                    <button class="btn btn-inverse btn-block">Inverse</button>
                    <button class="btn btn-metis-1 btn-block">btn-metis-1</button>
                    <button class="btn btn-metis-2 btn-block">btn-metis-2</button>
                    <button class="btn btn-metis-3 btn-block">btn-metis-3</button>
                    <button class="btn btn-metis-4 btn-block">btn-metis-4</button>
                    <button class="btn btn-metis-5 btn-block">btn-metis-5</button>
                    <button class="btn btn-metis-6 btn-block">btn-metis-6</button>
                </div>
                <!-- /.well well-small -->
                <!-- .well well-small -->
                <div class="well well-small dark">
                    <span>Default</span><span class="pull-right"><small>20%</small></span>

                    <div class="progress xs">
                        <div class="progress-bar progress-bar-info" style="width: 20%"></div>
                    </div>
                    <span>Success</span><span class="pull-right"><small>40%</small></span>

                    <div class="progress xs">
                        <div class="progress-bar progress-bar-success" style="width: 40%"></div>
                    </div>
                    <span>warning</span><span class="pull-right"><small>60%</small></span>

                    <div class="progress xs">
                        <div class="progress-bar progress-bar-warning" style="width: 60%"></div>
                    </div>
                    <span>Danger</span><span class="pull-right"><small>80%</small></span>

                    <div class="progress xs">
                        <div class="progress-bar progress-bar-danger" style="width: 80%"></div>
                    </div>
                </div>
            </div>
            <!-- /#right -->
        </div>
        <!-- /#wrap -->
        <footer class="Footer bg-dark dker">
            <p>2017 &copy; Metis Bootstrap Admin Template v2.4.2</p>
        </footer>
        <!-- /#footer -->
        <!-- #helpModal -->
        <div id="helpModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                            et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                            aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                            culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <!-- /#helpModal -->
    </body>
</html>
<script>
    $(function() {
         $('#ks-datatable').DataTable({
            pagingType: "full_numbers",
            language: {
                info: "Đang hiển thị trang _PAGE_ trong tổng _PAGES_ trang",
                infoFiltered: " (trong tổng số _MAX_ kết quả)",
                infoEmpty: "Không có dữ liệu để hiển thị",
                emptyTable: "Không có dữ liệu để hiển thị",
                lengthMenu: "Hiển thị _MENU_ kết quả",
                search: "Tìm kiếm",
                searchPlaceholder: "Nhập nội dung cần tìm...",
                zeroRecords: "Không tìm thấy dữ liệu cần tìm",
                paginate: {
                    first:      "Đầu tiên",
                    last:       "Cuối cùng",
                    next:       "Tiếp",
                    previous:   "Trước"
                }                
            },
            initComplete: function () {
                $('.dataTables_wrapper select').select2({
                    minimumResultsForSearch: Infinity
                });
            }
        });
    });
    
   
</script>