var user_group = {
    init: function () {
        user_group.registerEvents();
    },
    registerEvents: function () {
        $(document).ready(function () {
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
                            url: "/Admin/UserGroup/DeleteAllChecked",
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

            jQuery('.remove_row').on('click', function (e) {
                WRN_PROFILE_DELETE = "Bạn có chắc chắn muốn xóa dữ liệu này ?";
                var check = confirm(WRN_PROFILE_DELETE);
                if (check == true) {
                    e.preventDefault();
                    var btn = $(this);
                    var id = btn.data('id');
                    $.ajax({
                        url: "/Admin/UserGroup/DeleteAllChecked",
                        data: { ids: id },
                        type: "POST",
                        success: function (response) {
                            //
                        }
                    });
                    $('table tr').filter("[id='row_" + id + "']").remove();
                }
            });

            jQuery('#convert_userGroup').on('click', function (e) {
                var allVals = [];
                $(".sub_chk:checked").each(function () {
                    allVals.push($(this).attr('data-id'));
                });
                //alert(allVals.length); return false;  
                if (allVals.length <= 0) {
                    alert("Chưa chọn loại nhóm muốn chuyển đổi.");
                }
                else if(allVals.length > 1)
                {
                    alert("Chỉ được chọn 1 loại nhóm thành viên");
                }
                else
                {
                    WRN_PROFILE_DELETE = "Các thông tin có liên quan đến nhóm đều bị chuyển đổi, bạn có chắc chắn muốn chuyển đổi?";
                    var check = confirm(WRN_PROFILE_DELETE);
                    if (check == true) {
                        e.preventDefault();
                        var replace_id = $("#ddl_userGroup_id option:selected").val();
                        var id = allVals.join(",");;

                        $.ajax({
                            url: "/Admin/UserGroup/ConvertToOtherGroup",
                            data: { id: id ,replace_id : replace_id},
                            type: "POST",
                            success: function (response) {
                                console.log(response);
                                if (response.status == true) {
                                    alert("Chuyển đổi thành công!")
                                }
                                else {
                                    alert("Đã có lỗi trong quá trình xử lý, vui lòng thử lại sau!")
                                }
                            }
                        });
                        $('table tr').filter("[id='row_" + id + "']").remove();
                    }
                }
            });
        });

        $('.btn-active').off('click').on('click', function (e) {
            e.preventDefault();
            var btn = $(this);
            var id = btn.data('id');
            $.ajax({
                url: "/Admin/UserGroup/ChangeActive",
                data: { id: id },
                dataType: "json",
                type: "POST",
                success: function (response) {
                    console.log(response);
                    if (response.status == true) {
                        btn.text('YES');
                    }
                    else {
                        btn.text('NO');
                    }
                }
            });
        });
    }
}
user_group.init();