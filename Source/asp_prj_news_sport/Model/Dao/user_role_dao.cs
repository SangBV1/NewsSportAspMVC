using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class user_role_dao
    {
        news_sportDbContext db = null;
        public user_role_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(user_role entity)
        {
            try
            {
                db.user_role.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(user_role entity)
        {
            try
            {
                var info = db.user_role.Find(entity.id);
                info.name = entity.name;
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
                var info = db.user_role.Find(id);
                db.user_role.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public user_role Get_By_Id(string id)
        {
            return db.user_role.Find(id);
        }

        public IEnumerable<user_role> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.user_role
                         select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// string ID
        /// </summary>
        /// <returns></returns>
        public List<user_role> ListAll()
        {
            var model = from a in db.user_role
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }
    }
}
