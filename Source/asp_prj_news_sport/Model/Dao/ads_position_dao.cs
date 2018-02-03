using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class ads_position_dao
    {
        news_sportDbContext db = null;
        public ads_position_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(advertisement_position entity)
        {
            try
            {
                db.advertisement_position.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(advertisement_position entity)
        {
            try
            {
                var info = db.advertisement_position.Find(entity.id);
                info.id = entity.id;
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
                var info = db.advertisement_position.Find(id);
                db.advertisement_position.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public advertisement_position Get_By_Id(string id)
        {
            return db.advertisement_position.Find(id);
        }

        public IEnumerable<advertisement_position> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.advertisement_position
                         select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// string ID
        /// </summary>
        /// <returns></returns>
        public List<advertisement_position> ListAll()
        {
            var model = from a in db.advertisement_position
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }
    }
}
