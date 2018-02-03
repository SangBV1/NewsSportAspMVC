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
    public class content_tag_dao
    {
        news_sportDbContext db = null;
        public content_tag_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(content_tag entity)
        {
            try
            {
                db.content_tag.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(content_tag entity)
        {
            try
            {
                var info = db.content_tag.Find(entity.id);
                info.idx_content_id = entity.idx_content_id;
                info.idx_tag_id = entity.idx_tag_id;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public bool Delete(long id)
        {
            try
            {
                var info = db.content_tag.Find(id);
                db.content_tag.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public content_tag Get_By_Id(long id)
        {
            return db.content_tag.Find(id);
        }

        public IEnumerable<content_tag> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.content_tag
                         select a;
            return model.OrderByDescending(x => x.idx_content_id).ToPagedList(page, page_size);
        }

        //system processing

        public List<content_tag_view> ListTag_NumberContent_Des(int record = 0)
        {
            var model = (from a in db.content_tag
                         join b in db.tags on a.idx_tag_id equals b.id
                         group a by new { b.name } into g
                         select new
                         {
                            tag = g.Key.name,
                            number_content = g.Count(),
                         }).AsEnumerable().Select(x => new content_tag_view()
                         {
                            tag = x.tag,
                            number_content = x.number_content,
                         });
            if (record != 0)
            {
                return model.OrderByDescending(x => x.number_content).Take(record).ToList();
            }
            else
            {
                return model.OrderByDescending(x => x.number_content).ToList();
            }
        }
    }
}
