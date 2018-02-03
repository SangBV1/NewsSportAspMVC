namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("info")]
    public partial class info
    {
        [StringLength(50)]
        [Required(ErrorMessage = "ID không được để trống")]
        [Display(Name = "ID")]
        public string id { get; set; }

        [StringLength(250)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [StringLength(250)]
        [Display(Name = "Slug")]
        public string meta_title { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Nội dung")]
        public string detail { get; set; }

        [StringLength(250)]
        [Display(Name = "Tiều đề SEO")]
        public string seo_title { get; set; }

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

        [StringLength(250)]
        [Display(Name = "Từ khóa")]
        public string meta_keyword { get; set; }

        [StringLength(500)]
        [Display(Name = "Mô tả SEO")]
        public string meta_description { get; set; }

        [Display(Name = "Kích hoạt")]
        public bool is_active { get; set; }
    }
}
