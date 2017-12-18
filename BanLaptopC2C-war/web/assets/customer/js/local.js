$(function () {
    $('#thanhPho').change(function () {
            $.ajax({
                url: "quan-huyen",
                dataType: "json",
                data: {
                    id: $(this).val()
                },
                success: function (res) {
                    $("#quanHuyen").html(res);
                }
            });
        });
        $('#thanhPho').change();

        $('#quanHuyen').change(function () {
            $.ajax({
                url: "phuong-xa",
                dataType: "json",
                data: {
                    id: $(this).val()
                },
                success: function (res) {
                    $("#phuongXa").html(res);
                }
            });
        });
        $('#quanHuyen').change();
});

