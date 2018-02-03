namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class menu_type
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public menu_type()
        {
            menus = new HashSet<menu>();
        }

        [Required(ErrorMessage = "ID không được để trống")]
        [Display(Name = "ID")]
        public string id { get; set; }

        [Required(ErrorMessage = "TT ưu tiên không được để trống")]
        [Display(Name = "Ưu tiên")]
        public int? display_order { get; set; }

        [StringLength(20)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<menu> menus { get; set; }
    }
}
