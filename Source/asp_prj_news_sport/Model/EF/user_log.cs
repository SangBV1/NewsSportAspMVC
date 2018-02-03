namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class user_log
    {
        public long id { get; set; }

        [Required(ErrorMessage = "Tên đăng nhập không được để trống")]
        [StringLength(50)]
        [Display(Name = "Tên đăng nhập")]
        public string name_log { get; set; }

        [Required(ErrorMessage = "Mật khẩu không được để trống")]
        [StringLength(32)]
        [Display(Name = "Mật khẩu")]
        public string password_log { get; set; }

        [StringLength(50)]
        [Display(Name = "Họ tên")]
        public string name_person { get; set; }

        [StringLength(100)]
        [Display(Name = "Địa chỉ")]
        public string address_current { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "Email không được để trống")]
        [RegularExpression(@"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$", ErrorMessage = "Email không hợp lệ")]
        [Display(Name = "Email")]
        public string email { get; set; }

        [StringLength(20)]
        [Required(ErrorMessage = "Điện thoại không được để trống")]
        [RegularExpression(@"^([0-9]*|[0-9]\s*)*$", ErrorMessage = "Số điện thoại không hợp lệ")]
        [Display(Name = "Điện thoại")]
        public string phone { get; set; }

        [StringLength(20)]
        [Display(Name = "Nhóm thành viên")]
        public string user_group_id { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime? created_at { get; set; }

        [StringLength(50)]
        [Display(Name = "Người tạo")]
        public string created_by { get; set; }

        [Display(Name = "Ngày sửa")]
        public DateTime? modified_at { get; set; }

        [StringLength(50)]
        [Display(Name = "Người sửa")]
        public string modified_by { get; set; }

        [Display(Name = "Kích hoạt")]
        public bool is_active { get; set; }

        public virtual user_group user_group { get; set; }
    }
}
