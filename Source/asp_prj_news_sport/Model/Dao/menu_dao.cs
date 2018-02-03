using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class menu_dao
    {
        news_sportDbContext db = null;
        public menu_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(menu entity)
        {
            try
            {
                db.menus.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(menu entity)
        {
            try
            {
                var info = db.menus.Find(entity.id);
                info.name = entity.name;
                info.url = entity.url;
                info.target = entity.target;
                info.display_order = entity.display_order;
                info.menu_type_id = entity.menu_type_id;
                info.is_active = entity.is_active;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public bool Delete(int id)
        {
            try
            {
                var info = db.menus.Find(id);
                db.menus.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool ChangeActive(int id)
        {
            var info = db.menus.Find(id);
            info.is_active = !info.is_active;
            db.SaveChanges();
            return info.is_active;
        }

        public menu Get_By_Id(int id)
        {
            return db.menus.Find(id);
        }

        public IEnumerable<menu> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.menus
                        select a;
            return model.OrderBy(x => x.menu_type_id).ToPagedList(page, page_size);
        }

        //system processing
        public List<menu> ListAll()
        {
            var model = from a in db.menus
                        select a;
            return model.OrderBy(x => x.menu_type_id).ToList();
        }

        /// <summary>
        /// use int menu_type_id
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public List<menu> Get_By_Type(string type)
        {
            var model = from a in db.menus
                        join b in db.menu_type
                        on a.menu_type_id equals b.id
                        where a.menu_type_id == type
                        select a;
            return model.OrderBy(x => x.display_order).Where(x=>x.is_active == true).ToList();
        }
    }
}
