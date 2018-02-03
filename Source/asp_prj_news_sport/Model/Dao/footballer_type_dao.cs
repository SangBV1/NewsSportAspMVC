using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class footballer_type_dao
    {
        news_sportDbContext db = null;
        public footballer_type_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(footballer_type entity)
        {
            try
            {
                db.footballer_type.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(footballer_type entity)
        {
            try
            {
                var info = db.footballer_type.Find(entity.id);
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
                var info = db.footballer_type.Find(id);
                db.footballer_type.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public footballer_type Get_By_Id(string id)
        {
            return db.footballer_type.Find(id);
        }

        public IEnumerable<footballer_type> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.footballer_type
                        select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// order by string-id
        /// </summary>
        /// <returns></returns>
        public List<footballer_type> ListAll()
        {
            var model = from a in db.footballer_type
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }
    }
}
