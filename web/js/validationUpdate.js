$().ready(function () {
    $.validator.addMethod("phone", function (value, element) {
        // Sử dụng regex để kiểm tra định dạng số điện thoại
        return this.optional(element) || /^[0-9]{10}$/i.test(value);
    }, "Hãy nhập một số điện thoại hợp lệ.");

    $("#AccountUpdate").validate({
        onfocusout: false,
        onkeyup: false,
        onclick: false,
        rules: {
            "fullname": {
                required: true,
                maxlength: 100
            },
            "age": {
                required: true,
                min: 15,
                max: 50
            },
            "email": {
                required: true,
                email: true
            },
            "phone": {
                required: true,
                maxlength: 10,
                phone: true
            },
            "city": {
                required: true
            }
        }, messages: {
            "fullname": {
                required: "*Fullname is required",
                maxlength: "*Maxlength is 100 characters"
            },
            "age": {
                required: "*Age is required",
                min: "*Age must be greater than 14",
                max: "*Age must be smaller than 51"
            },
            "email": {
                required: "*Email is required",
                email: "*Email is invalid"
            },
            "phone": {
                required: "*Phone is required",
                maxlength: "*Maxlength is 10 numbers",
                phone: "*Phone is invalid"
            },
            "city": {
                required: "*City is required"
            }
        }
    });
});

$().ready(function () {
    $("#AccountChangePass").validate({
        onfocusout: false,
        onkeyup: false,
        onclick: false,
        rules: {
            "oldPass": {
                required: true
            },
            "newPass": {
                required: true
            },
            "reNewPass": {
                required: true,
                equalTo: "#newPass"
            }
        }, messages: {
            "oldPass": {
                required: "*Password is required"
            },
            "newPass": {
                required: "*New Password is required"
            },
            "reNewPass": {
                required: "*RePassword is required",
                equalTo: "*RePassword need like password"
            }
        }
    });
});



