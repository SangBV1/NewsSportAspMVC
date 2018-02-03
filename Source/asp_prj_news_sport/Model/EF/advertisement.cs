namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("advertisement")]
    public partial class advertisement
    {
        public int id { get; set; }

        [StringLength(250)]
        [Required(ErrorMessage = "Link ảnh không được để trống")]
        [Display(Name = "Link ảnh")]
        public string url_image { get; set; }

        [StringLength(250)]
        [Display(Name = "Link source")]
        public string url_source { get; set; }

        [Display(Name = "Lượt click")]
        public int click_count { get; set; }

        [StringLength(500)]
        [Display(Name = "Mô tả")]
        public string description_ad { get; set; }

        [Display(Name = "Ưu tiên")]
        [Required(ErrorMessage = "Thứ tự ưu tiên không được để trống")]
        public int? display_order { get; set; }

        [StringLength(20)]
        [Display(Name = "Loại / Vị trí")]
        public string advertisement_position_id { get; set; }

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

        public virtual advertisement_position advertisement_position { get; set; }
    }
}
