using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class menu_type_dao
    {
        news_sportDbContext db = null;
        public menu_type_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(menu_type entity)
        {
            try
            {
                db.menu_type.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(menu_type entity)
        {
            try
            {
                var info = db.menu_type.Find(entity.id);
                info.name = entity.name;
                info.display_order = entity.display_order;
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
                var info = db.menu_type.Find(id);
                db.menu_type.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public menu_type Get_By_Id(string id)
        {
            return db.menu_type.Find(id);
        }

        public IEnumerable<menu_type> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.menu_type
                        select a;
            return model.OrderBy(x => x.display_order).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// int ID
        /// </summary>
        /// <returns></returns>
        public List<menu_type> ListAll()
        {
            var model = from a in db.menu_type
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }
    }
}
