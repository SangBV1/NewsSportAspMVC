var rank = {
    init: function () {
        rank.registerEvents();
    },
    registerEvents: function () {
        $(document).ready(function () {

            jQuery('.sort_reload').on('click', function (e) {
                e.preventDefault();
                var btn = $(this);
                var id = btn.data('id');
                var season_id = $("#season_id").val();
                var sort_type1 = $("#sort_type1 option:selected").val();
                var sort_type2 = $("#sort_type2 option:selected").val();
                var sort_type3 = $("#sort_type3 option:selected").val();
                var sort_type4 = $("#sort_type4 option:selected").val();

                // Điều kiện sắp xếp ở các ddl phải khác nhau
                if (sort_type1 != sort_type2 && sort_type1 != sort_type3 && sort_type1 != sort_type4
                    && sort_type2 != sort_type1 && sort_type2 != sort_type3 && sort_type2 != sort_type4
                    && sort_type3 != sort_type1 && sort_type3 != sort_type2 && sort_type3 != sort_type4
                    && sort_type4 != sort_type1 && sort_type4 != sort_type2 && sort_type4 != sort_type3)
                {
                    $.ajax({
                        url: "/Admin/Rule/EditSortRule",
                        data: {
                            clubIDs: id,
                            sort_type1: sort_type1,
                            sort_type2: sort_type2,
                            sort_type3: sort_type3,
                            sort_type4: sort_type4
                        },
                        type: "POST",
                        success: function (response) {
                            window.location = "/Admin/Rank";
                        }
                    });
                }
                else {
                    alert("Điều kiện sắp sếp không hợp lệ, phải khác nhau ở từng vị trí");
                }
            });
        });
    }
}
rank.init();

function get_value_ddl(id)
{
    var sort_type1 = $("#("+id+") option:selected").val();
}