$(function () {
    $(".v2q-btn-buy").click(function () {
        var pId = $(this).attr("data-prod-id");
        $.ajax({
                    url: "mua",
                    data: {
                        id: pId
                    },
                    dataType: 'json',
                    success: function (data) {
                        $(".v2q-cart-container .v2q-quantity span").html(data[0]);
                        showSuccessToast("Đã thêm 1 sản phẩm vào giỏ hàng");
                    }
                });
                location.reload();
        
    });
    
    



    $(".v2q-btn-del").click(function () {
        var pId = $(this).attr("data-prod-id");
        var c = confirm("Bạn có muốn xóa sản phẩm này?");
        if(c)
        {
            $.ajax({
                        url: "xoa",
                        data: {
                            id: pId
                        },
                        dataType: 'json',
                        success: function (data) {
                            $(".v2q-cart-container .v2q-quantity span").html(data[0]);
                            showSuccessToast("Đã xóa thành công");
                        }
                    });
            location.reload();
        }
    });
    
    $(".v2q-btn-upd").click(function () {
        var pId = $(this).attr("data-prod-id");
        var pQua= document.getElementById("soLuongMoi").value;
        
        $.ajax({
                url: "cap-nhat-so-luong",
                data: {
                    id: pId,
                    soLuongMoi: pQua
                },
                dataType: 'json',
                success: function (data) {
                    $(".v2q-cart-container .v2q-quantity span").html(data[0]);
                    showSuccessToast("Đã cập nhật thành công");
                }
            });
        location.reload();
    });
    
    

});


