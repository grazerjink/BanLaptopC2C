toastr.options = {
    "closeButton": true,
    "debug": false,
    "newestOnTop": false,
    "progressBar": false,
    "positionClass": "toast-top-right",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "500",
    "timeOut": "2000",
    "extendedTimeOut": "500",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
};

﻿function showSuccessToast(successMess) {
    toastr["success"](
            successMess,
            "Thao tác thành công");
}

function showErrorToast(errorMess) {
    toastr["error"](
            errorMess,
            "Thao tác thất bại");
}

function showWarningToast(warningMess) {
    toastr["warning"](
            warningMess,
            "Thao tác thất bại");
}

function showServerErrorToast(serverErrors) {
    toastr["error"](
            serverErrors,
            "Thông tin không hợp lệ");
}
