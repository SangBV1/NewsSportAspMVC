var user_credential = {
    init: function () {
        user_credential.registerEvents();
        user_credential.remove_row();
    },
    registerEvents: function () {
        $(document).ready(function () {

            jQuery('.add_new').on('click', function (e) {
                var user_group = $('#user_group option:selected').val();
                var user_role = $('#user_role option:selected').val();
                $.ajax({
                    url: "/Admin/UserCredential/Create",
                    data: { user_group: user_group, user_role: user_role },
                    type: "POST",
                    success: function (response) {
                        console.log(response);
                        if (response.status == 1) {
                            alert("Thêm mới thông tin thành công!");
                            // for client side
                            var html = '';
                            html = '<tr id="row_' + response.id + '">'
                                        + '<td><input type="checkbox" class="sub_chk" data-id="' + response.id + '"></td>'
                                        + '<td>' + response.user_group_name + '</td>'
                                        + '<td>' + response.user_role_name + '</td>'
                                        + '<td>'
                                            + '<a href="#" class="remove_row" data-id="' + response.id + '"><i class="fa fa-trash" aria-hidden="true"></i></a>'
                                        + '</td>'
                                   + '</tr>';
                            $('#table').find('tbody:last').append(html);
                            user_credential.remove_row();
                        }
                        else if (response.status == -2) {
                            alert("Chức năng đã tồn tại, vui lòng nhập lại!");
                        }
                        else {
                            alert("Đã có lỗi trong quá trình xử lý, vui lòng nhập lại!");
                        }
                    }
                });
            });

            jQuery('#chk_all').on('click', function (e) {
                if ($(this).is(':checked', true)) {
                    $(".sub_chk").prop('checked', true);
                }
                else {
                    $(".sub_chk").prop('checked', false);
                }
            });

            jQuery('.delete_all').on('click', function (e) {
                var allVals = [];
                $(".sub_chk:checked").each(function () {
                    allVals.push($(this).attr('data-id'));
                });
                //alert(allVals.length); return false;  
                if (allVals.length <= 0) {
                    alert("Chưa chọn dữ liệu muốn xóa.");
                }
                else {
                    //$("#loading").show(); 
                    WRN_PROFILE_DELETE = "Bạn có chắc chắn muốn xóa dữ liệu này ?";
                    var check = confirm(WRN_PROFILE_DELETE);
                    if (check == true) {
                        //for server side

                        var join_selected_values = allVals.join(",");
                        $.ajax({
                            url: "/Admin/UserCredential/DeleteAllChecked",
                            data: { ids: join_selected_values },
                            type: "POST",
                            success: function (response) {
                                //
                            }
                        });
                        //for client side
                        $.each(allVals, function (index, value) {
                            $('table tr').filter("[id='row_" + value + "']").remove();
                        });
                    }
                }
            });
        });
    },

    remove_row: function () {
        $(document).ready(function () {
            jQuery('.remove_row').on('click', function (e) {
                WRN_PROFILE_DELETE = "Bạn có chắc chắn muốn xóa dữ liệu này ?";
                var check = confirm(WRN_PROFILE_DELETE);
                if (check == true) {
                    e.preventDefault();
                    var btn = $(this);
                    var id = btn.data('id');
                    $.ajax({
                        url: "/Admin/UserCredential/DeleteAllChecked",
                        data: { ids: id },
                        type: "POST",
                        success: function (response) {
                            //
                        }
                    });
                    $('table tr').filter("[id='row_" + id + "']").remove();
                }
            });
        });
    }
}
user_credential.init();