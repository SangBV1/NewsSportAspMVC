namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class content_category
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public content_category()
        {
            contents = new HashSet<content>();
        }

        public int id { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [StringLength(250)]
        [Display(Name = "Slug")]
        public string meta_title { get; set; }

        [Required(ErrorMessage = "Thứ tự ưu tiên không được để trống")]
        [Display(Name = "Ưu tiên")]
        public int? display_order { get; set; }

        [StringLength(250)]
        [Display(Name = "Tiêu đề SEO")]
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

        [Display(Name = "Show Home")]
        public bool is_showhome { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<content> contents { get; set; }
    }
}
