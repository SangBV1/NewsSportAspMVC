namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class football_club
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public football_club()
        {
            footballers = new HashSet<footballer>();
            season_club = new HashSet<season_club>();
            matches = new HashSet<match>();
            matches1 = new HashSet<match>();
            ranks = new HashSet<rank>();
        }

        [StringLength(20)]
        [Required(ErrorMessage = "ID không được để trống")]
        [Display(Name = "ID")]
        public string id { get; set; }

        [StringLength(100)]
        [Display(Name = "Tên CLB")]
        public string name { get; set; }

        [StringLength(50)]
        [Display(Name = "Sân vận động")]
        public string pitch { get; set; }

        [StringLength(100)]
        [Required(ErrorMessage = "Logo không được để trống")]
        [Display(Name = "Logo")]
        public string url_logo { get; set; }

        [StringLength(20)]
        [Display(Name = "Điện thoại")]
        public string phone_number { get; set; }

        [StringLength(20)]
        [Display(Name = "Fax")]
        public string fax_number { get; set; }

        [StringLength(100)]
        [Display(Name = "Địa chỉ")]
        public string address { get; set; }

        [StringLength(100)]
        [Display(Name = "Huấn luyện viên")]
        public string coach { get; set; }

        [Column(TypeName = "ntext")]
        [Display(Name = "Mô tả")]
        public string detail { get; set; }

        [Display(Name = "Kích hoạt")]
        public bool is_active { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<footballer> footballers { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<season_club> season_club { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<match> matches { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<match> matches1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<rank> ranks { get; set; }
    }
}
