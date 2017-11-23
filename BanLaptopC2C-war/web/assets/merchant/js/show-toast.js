toastr.options = {
    "closeButton": true,
    "debug": false,
    "newestOnTop": true,
    "progressBar": true,
    "positionClass": "toast-top-right",
    "preventDuplicates": true,
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "2000",
    "extendedTimeOut": "1000",
    "showEasing": "linear",
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
