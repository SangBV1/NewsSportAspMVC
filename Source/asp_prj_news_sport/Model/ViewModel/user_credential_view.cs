using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.ViewModel
{
    public class user_credential_view
    {
        public long id { get; set; }

        public string idx_user_group_id { get; set; }

        public string idx_user_role_id { get; set; }

        //other field from other table
        public string  user_group_name { get; set; }
        public string  user_role_name { get; set; }
    }
}
