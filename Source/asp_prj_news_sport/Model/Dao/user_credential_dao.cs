using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;
using Model.ViewModel;

namespace Model.Dao
{
    public class user_credential_dao
    {
        news_sportDbContext db = null;
        public user_credential_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib

        /// <summary>
        /// return -2 (record exist)
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Insert(ref long newUserCredential,user_credential entity)
        {
            try
            {
                if (CheckExistUserCredential(entity.idx_user_role_id, entity.idx_user_group_id))
                {
                    //a userCredential already exists;
                    return -2;
                }
                db.user_credential.Add(entity);
                db.SaveChanges();

                //return new ID after insert
                newUserCredential = entity.id;
                return 1;
            }
            catch (Exception)
            {
                return -1;
            }
        }

        public int Update(user_credential entity)
        {
            try
            {
                if (CheckExistUserCredential(entity.idx_user_role_id, entity.idx_user_group_id))
                {
                    //a userCredential already exists;
                    return -2;
                }

                var info = db.user_credential.Find(entity.id);
                info.idx_user_role_id = entity.idx_user_role_id;
                info.idx_user_group_id = entity.idx_user_group_id;
                db.SaveChanges();
                return 1;
            }
            catch (Exception)
            {
                return -1;
            }

        }

        public bool Delete(long id)
        {
            try
            {
                var info = db.user_credential.Find(id);
                db.user_credential.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public user_credential Get_By_Id(long id)
        {
            return db.user_credential.Find(id);
        }

        public user_credential_view ViewDetailByID(long userCredentailID)
        {
            var model = (from a in db.user_credential
                         where a.id == userCredentailID
                         select new
                         {
                             id = a.id,
                             idx_user_group_id = a.idx_user_group_id,
                             idx_user_role_id = a.idx_user_role_id,
                             //other field from other table
                             user_group_name = a.user_group.name,
                             user_role_name = a.user_role.name
                         }).Select(x => new user_credential_view()
                         {
                             id = x.id,
                             idx_user_group_id = x.idx_user_group_id,
                             idx_user_role_id = x.idx_user_role_id,
                             user_group_name = x.user_group_name,
                             user_role_name = x.user_role_name
                         });
            return model.First();
        }

        public IEnumerable<user_credential> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.user_credential
                         select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        public IEnumerable<user_credential> ListCredential_ByUserGroup(ref string userGroupID,int page, int page_size)
        {
            string tmp_userGroupID = userGroupID;
            var result_user_group = new user_group_dao().CheckUserGroup(userGroupID);

            if (result_user_group)
            {
                var model = db.user_credential.Where(x => x.idx_user_group_id == tmp_userGroupID).ToList();
                return model.OrderBy(x => x.idx_user_role_id).ToPagedList(page, page_size);
            }
            else
            {
                string current_userGroup = db.user_credential.OrderBy(x => x.idx_user_group_id).Select(x => x.idx_user_group_id).First().ToString();
                var model = db.user_credential.Where(x => x.idx_user_group_id == current_userGroup).ToList();

                userGroupID = current_userGroup;

                return model.OrderBy(x => x.idx_user_role_id).ToPagedList(page, page_size);
            }
        }

        //system processing

        public bool CheckExistUserCredential(string userRoleID, string userGroupID)
        {
            return db.user_credential.Where(x => x.idx_user_role_id == userRoleID && x.idx_user_group_id == userGroupID).Count() > 0;
        }
    }
}
