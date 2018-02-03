using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class info_dao
    {
        news_sportDbContext db = null;
        public info_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(info entity)
        {
            try
            {
                entity.created_at = DateTime.Now;
                entity.modified_at = DateTime.Now;
                if (string.IsNullOrEmpty(entity.meta_title))
                {
                    entity.meta_title = CommonPublic.StringHelper.ToUnsignString(entity.name);
                }
                db.infoes.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(info entity)
        {
            try
            {
                var info = db.infoes.Find(entity.id);
                info.name = entity.name;
                info.meta_title = entity.meta_title;
                info.detail = entity.detail;
                info.seo_title = entity.seo_title;
                info.modified_at = DateTime.Now;
                info.modified_by = entity.modified_by;
                info.meta_description = entity.meta_description;
                info.meta_keyword = entity.meta_keyword;
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
                var info = db.infoes.Find(id);
                db.infoes.Remove(info);
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
            var info = db.infoes.Find(id);
            info.is_active = !info.is_active;
            db.SaveChanges();
            return info.is_active;
        }

        public info Get_By_Id(string id)
        {
            return db.infoes.Find(id);
        }

        public IEnumerable<info> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.infoes
                         select a;
            return model.OrderBy(x => x.created_at).ToPagedList(page, page_size);
        }

        //system processing
    }
}
