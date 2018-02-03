namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("footballer")]
    public partial class footballer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public footballer()
        {
            match_goal = new HashSet<match_goal>();
        }

        public int id { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [Display(Name = "Ngày Sinh")]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime? birth_date { get; set; }

        [StringLength(50)]
        [Display(Name = "Quê quán")]
        public string hometown { get; set; }

        [StringLength(50)]
        [Display(Name = "Vị trí đá")]
        public string position { get; set; }

        [StringLength(20)]
        [Display(Name = "Loại")]
        public string footballer_type_id { get; set; }

        [StringLength(20)]
        [Display(Name = "CLB")]
        public string footballClub_id { get; set; }

        public virtual football_club football_club { get; set; }

        public virtual footballer_type footballer_type { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<match_goal> match_goal { get; set; }
    }
}
