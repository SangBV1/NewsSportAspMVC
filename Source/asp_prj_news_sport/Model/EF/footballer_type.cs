namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class footballer_type
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public footballer_type()
        {
            footballers = new HashSet<footballer>();
        }

        [StringLength(20)]
        [Required(ErrorMessage = "ID không được để trống")]
        [Display(Name = "ID")]
        public string id { get; set; }

        [StringLength(250)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<footballer> footballers { get; set; }
    }
}
