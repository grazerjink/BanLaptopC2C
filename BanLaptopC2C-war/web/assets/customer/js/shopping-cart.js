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
    });
});


