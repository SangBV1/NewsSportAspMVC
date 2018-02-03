namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("match")]
    public partial class match
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public match()
        {
            match_goal = new HashSet<match_goal>();
        }

        public int id { get; set; }

        [Column(TypeName = "date")]
        [Required(ErrorMessage = "Ngày đấu không được để trống")]
        [Display(Name = "Ngày đấu")]
        public DateTime? date_at { get; set; }

        [Required(ErrorMessage = "Thời gian không được để trống")]
        [Display(Name = "Thời gian")]
        public TimeSpan? time_at { get; set; }

        [StringLength(50)]
        [Display(Name = "Sân vận động")]
        public string pitch { get; set; }

        [StringLength(20)]
        [Display(Name = "Đội nhà")]
        public string home_club { get; set; }

        [StringLength(20)]
        [Display(Name = "Đội khách")]
        public string guest_club { get; set; }

        [StringLength(5)]
        [Display(Name = "Tỷ số (vd: 2,1)")]
        public string score { get; set; }

        [StringLength(20)]
        [Display(Name = "Vòng đấu")]
        public string round_id { get; set; }

        [StringLength(20)]
        [Display(Name = "Mùa giải")]
        public string season_id { get; set; }

        public virtual football_club football_club { get; set; }

        public virtual football_club football_club1 { get; set; }

        public virtual round round { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<match_goal> match_goal { get; set; }

        public virtual season season { get; set; }
    }
}
