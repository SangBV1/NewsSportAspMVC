using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class goal_type_dao
    {
        news_sportDbContext db = null;
        public goal_type_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(goal_type entity)
        {
            try
            {
                db.goal_type.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(goal_type entity)
        {
            try
            {
                var info = db.goal_type.Find(entity.id);
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
                var info = db.goal_type.Find(id);
                db.goal_type.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public goal_type Get_By_Id(string id)
        {
            return db.goal_type.Find(id);
        }

        public IEnumerable<goal_type> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.goal_type
                        select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// order by string-id
        /// </summary>
        /// <returns></returns>
        public List<goal_type> ListAll()
        {
            var model = from a in db.goal_type
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }
    }
}
