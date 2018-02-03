var match_goal = {
    init: function () {
        match_goal.registerEvents();
    },
    registerEvents: function () {
        $(document).ready(function () {

            //check match valid => accept to addnew .. and contrary
            var btn_addNew = document.getElementById('btn-addNew');
            if ($('#btn-addNew').data('match-id') == 0) {
                btn_addNew.className = btn_addNew.className + ' disabled';
            }
            //end/check match valid => accept to addnew .. and contrary

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
                            url: "/Admin/MatchGoal/DeleteAllChecked",
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
                        url: "/Admin/MatchGoal/DeleteAllChecked",
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
match_goal.init();