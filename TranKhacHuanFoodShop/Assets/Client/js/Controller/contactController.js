var contact = {
    init: function () {
        contact.resgisterEvents();
    },
    resgisterEvents: function () {
        $('#btnSend').off('click').on('click', function () {
            
            var name = $('#txtName').val();
            var phone = $('#txtPhone').val();
            var email = $('#txtMail').val();
            var mess = $('#txtMess').val();


            $.ajax({
                url: '/Contact/Send',
                type: 'POST',
                dataType: 'json',
                data: {
                    name: name,
                    phone: phone,
                    email: email,
                    mess:mess
                },
                success: function (res) {
                    if (res.status == true)
                    {
                        window.alert('Gửi thành công');
                    }
                }
            })
        });
    }
}
contact.init();