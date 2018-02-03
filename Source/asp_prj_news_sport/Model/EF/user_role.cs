namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class user_role
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public user_role()
        {
            user_credential = new HashSet<user_credential>();
        }

        [StringLength(50)]
        [Required(ErrorMessage = "ID không được để trống")]
        [Display(Name = "ID")]
        public string id { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên")]
        public string name { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<user_credential> user_credential { get; set; }
    }
}
