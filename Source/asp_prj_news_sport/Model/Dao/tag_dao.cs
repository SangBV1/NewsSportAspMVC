using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class tag_dao
    {
        news_sportDbContext db = null;
        public tag_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(tag entity)
        {
            try
            {
                db.tags.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(tag entity)
        {
            try
            {
                var info = db.tags.Find(entity.id);
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
                var info = db.tags.Find(id);
                db.tags.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public tag Get_By_Id(string id)
        {
            return db.tags.Find(id);
        }

        public IEnumerable<tag> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.tags
                         select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //client processing

        /// <summary>
        /// lấy tất cả tag của bài viết theo long id
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public List<tag> ListAllTag_By_ContentID(long ID)
        {
            var model = from a in db.tags
                        join b in db.content_tag
                        on a.id equals b.idx_tag_id
                        where b.idx_content_id == ID
                        select a;
            return model.ToList();
        }

        public bool CheckTag(string tagID)
        {
            return db.tags.Count(x => x.id == tagID) > 0;
        }
    }
}
