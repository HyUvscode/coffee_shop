$().ready(function () {
    $.validator.addMethod("phone", function (value, element) {
        return this.optional(element) || /^[0-9]{10}$/i.test(value);
    }, "Hãy nhập một số điện thoại hợp lệ.");

    $.validator.addMethod("username", function (value, element) {
        return this.optional(element) || /^[a-zA-Z0-9_]+$/i.test(value);
    }, "Username chỉ được chứa chữ cái, số và dấu gạch dưới.");


    $("#SignUp").validate({
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
                min: 8,
                max: 90
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
            },
            "username": {
                required: true,
                maxlength: 15,
                username: true
            },
            "password": {
                required: true,
                maxlength: 20
            },
            "repassword": {
                required: true,
                equalTo: "#password"
            }
        },
        messages: {
            "fullname": {
                required: "*Fullname is required",
                maxlength: "*Maxlength is 100 characters"
            },
            "age": {
                required: "*Age is required",
                min: "*Age must be greater than 7",
                max: "*Age must be smaller than 91"
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
                required: "*Province is required"
            },
            "username": {
                required: "*Username is required",
                maxlength: "*Maxlength is 15 characters",
                username: "*Username contained unacceptable characters"
            },
            "password": {
                required: "*Password is required",
                maxlength: "*Maxlength is 20 characters"
            },
            "repassword": {
                required: "*Confirm password is required",
                equalTo: "*Password do not match"
            }
        }
    });
});
