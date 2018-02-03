namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("round")]
    public partial class round
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public round()
        {
            matches = new HashSet<match>();
            season_round = new HashSet<season_round>();
        }

        [StringLength(20)]
        [Required(ErrorMessage = "ID không được để trống")]
        [Display(Name = "ID")]
        public string id { get; set; }

        [StringLength(100)]
        [Display(Name = "Tên")]
        public string name { get; set; }
   
        [Required(ErrorMessage = "TT ưu tiên không được để trống")]
        [Display(Name = "Ưu tiên")]
        public int? display_order { get; set; }

        [StringLength(50)]
        [Display(Name = "Giải đấu")]
        public string tournament_id { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<match> matches { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<season_round> season_round { get; set; }

        public virtual tournament tournament { get; set; }
    }
}
