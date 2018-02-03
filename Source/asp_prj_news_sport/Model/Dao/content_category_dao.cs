using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;
using CommonPublic;
using Model.ViewModel;

namespace Model.Dao
{
    public class content_category_dao
    {
        news_sportDbContext db = null;
        public content_category_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(content_category entity)
        {
            try
            {
                entity.created_at = DateTime.Now;
                entity.modified_at = DateTime.Now;
                db.content_category.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(content_category entity)
        {
            try
            {
                var info = db.content_category.Find(entity.id);
                info.name = entity.name;
                info.meta_title = entity.meta_title;
                info.display_order = entity.display_order;
                info.seo_title = entity.seo_title;
                info.modified_by = entity.modified_by;
                info.modified_at = DateTime.Now;
                info.meta_keyword = entity.meta_keyword;
                info.meta_description = entity.meta_description;
                info.is_active = entity.is_active;
                info.is_showhome = entity.is_showhome;
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
                var info = db.content_category.Find(id);
                db.content_category.Remove(info);
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
            var info = db.content_category.Find(id);
            info.is_active = !info.is_active;
            db.SaveChanges();
            return info.is_active;
        }

        public bool ChangeShowHome(int id)
        {
            var info = db.content_category.Find(id);
            info.is_showhome = !info.is_showhome;
            db.SaveChanges();
            return info.is_showhome;
        }

        public content_category Get_By_Id(int id)
        {
            return db.content_category.Find(id);
        }

        public IEnumerable<content_category> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.content_category
                        select a;
            return model.OrderBy(x => x.display_order).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// int ID
        /// </summary>
        /// <returns></returns>
        public List<content_category> ListAll()
        {
            var model = from a in db.content_category
                        where a.is_active == true
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }

        //client processing

        /// <summary>
        /// is_top_hot = true by int category id , cate = 0 - default get by all category
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns>
        public List<content_category_view> ListAllContentCate_View()
        {
            var model_view = (from a in db.contents
                              join b in db.content_category on a.content_category_id equals b.id
                              where b.is_active == true
                              group b by new { b.id,b.name,b.meta_title,b.display_order } into g
                              select new
                              {
                                  id = g.Key.id,
                                  name = g.Key.name,
                                  meta_title = g.Key.meta_title,
                                  display_order = g.Key.display_order,
                                  num_content = g.Count(),

                              }).AsEnumerable().Select(x => new content_category_view()
                              {
                                  id = x.id,
                                  name = x.name,
                                  meta_title = x.meta_title,
                                  display_order = x.display_order,
                                  num_content = x.num_content,
                              });
            return model_view.OrderBy(x => x.display_order).ToList();
        }

        public int? CheckCategory_By_ContentID(long ID)
        {
            try
            {
                var cate = db.contents.Find(ID).content_category_id;
                return cate;
            }
            catch (Exception)
            {
                return -1;
            }

        }
    }
}
