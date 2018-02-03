namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("season")]
    public partial class season
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public season()
        {
            matches = new HashSet<match>();
            ranks = new HashSet<rank>();
            season_round = new HashSet<season_round>();
            season_club = new HashSet<season_club>();
        }

        [StringLength(20)]
        [Required(ErrorMessage = "ID không được để trống")]
        [Display(Name = "ID")]
        public string id { get; set; }

        [StringLength(100)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [Required(ErrorMessage = "Ngày bắt đầu không được để trống")]
        [Display(Name = "Ngày bắt đầu")]
        public DateTime? start_date_at { get; set; }

        [Required(ErrorMessage = "Ngày kết thúc không được để trống")]
        [Display(Name = "Ngày kết thúc")]
        public DateTime? end_date_at { get; set; }

        [Required(ErrorMessage = "Số lượng CLB tham gia không được để trống")]
        [Display(Name = "Số lượng CLB tham gia")]
        public int? number_club { get; set; }

        [Required(ErrorMessage = "TT ưu tiên không được để trống")]
        [Display(Name = "Ưu tiên")]
        public int? display_order { get; set; }

        [StringLength(50)]
        [Display(Name = "Giải đấu")]
        public string tournamnet_id { get; set; }

        [Display(Name = "Kích hoạt")]
        public bool is_active { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<match> matches { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<rank> ranks { get; set; }

        public virtual tournament tournament { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<season_round> season_round { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<season_club> season_club { get; set; }
    }
}
