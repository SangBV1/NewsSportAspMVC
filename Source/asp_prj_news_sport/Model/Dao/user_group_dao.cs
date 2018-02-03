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
    public class user_group_dao
    {
        news_sportDbContext db = null;
        public user_group_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(user_group entity)
        {
            try
            {
                db.user_group.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(user_group entity)
        {
            try
            {
                var info = db.user_group.Find(entity.id);
                
                info.name = entity.name;
                info.is_active = entity.is_active;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public bool Delete(string id)
        {
            try
            {
                var info = db.user_group.Find(id);
                db.user_group.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool ChangeActive(string id)
        {
            var info = db.user_group.Find(id);
            info.is_active = !info.is_active;
            db.SaveChanges();
            return info.is_active;
        }

        public user_group Get_By_Id(string id)
        {
            return db.user_group.Find(id);
        }

        public IEnumerable<user_group> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.user_group
                         select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// string ID
        /// </summary>
        /// <returns></returns>
        public List<user_group> ListAll()
        {
            var model = from a in db.user_group
                        where a.is_active == true
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }

        /// <summary>
        /// Convert UserGroup to other UserGroup by id 
        /// Tất cả dữ liệu liên quan đều bị thay đổi
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool ConverToOtherGroup(string id,string replace_id)
        {
            try
            {
                var info_userLog = db.user_log.Where(x=>x.user_group_id == id).ToList();
                info_userLog.ForEach(x => x.user_group_id = replace_id);

                var info_userCredential = db.user_credential.Where(x => x.idx_user_group_id == id).ToList();
                info_userCredential.ForEach(x => x.idx_user_group_id = replace_id);

                var info_userGroup = db.user_group.Find(id);

                db.user_group.Remove(info_userGroup);
                db.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool CheckUserGroup(string userGroupID)
        {
            return db.user_group.Count(x => x.id == userGroupID) > 0;
        }
    }
}
