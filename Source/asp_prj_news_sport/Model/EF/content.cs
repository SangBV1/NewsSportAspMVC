namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("content")]
    public partial class content
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public content()
        {
            content_tag = new HashSet<content_tag>();
        }

        public long id { get; set; }

        [StringLength(250)]
        [Required(ErrorMessage = "Tiêu đề không được để trống")]
        [Display(Name = "Tiêu đề")]
        public string name { get; set; }

        [StringLength(250)]
        [Display(Name = "Slug")]
        public string meta_title { get; set; }

        [StringLength(500)]
        [Display(Name = "Mô tả ngắn")]
        public string description_content { get; set; }

        [StringLength(250)]
        [Required(ErrorMessage = "Ảnh thu nhỏ không được để trống")]
        [Display(Name = "Ảnh thu nhỏ")]
        public string url_image { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Nội dung")]
        public string detail { get; set; }

        [Display(Name = "Thể loại")]
        public int? content_category_id { get; set; }

        [Display(Name = "Lượt xem")]
        public int view_count { get; set; }

        [Display(Name = "Lượt chia sẻ")]
        public int share_count { get; set; }

        [StringLength(500)]
        [Display(Name = "Thẻ tag")]
        public string tag { get; set; }

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

        [Display(Name = "Top Hot")]
        public bool is_top_hot { get; set; }

        public virtual content_category content_category { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<content_tag> content_tag { get; set; }
    }
}
