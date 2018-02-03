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
    public class content_dao
    {
        news_sportDbContext db = null;
        public content_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert_Content(content entity)
        {
            try
            {
                //process the alias

                //gắn giá trị nếu như rỗng ở các mục slug , keyword , description cho việc SEO sau này
                if (string.IsNullOrEmpty(entity.meta_title))
                {
                    entity.meta_title = StringHelper.ToUnsignString(entity.name);
                }
                if (string.IsNullOrEmpty(entity.seo_title))
                {
                    entity.seo_title = entity.name;
                }
                if (string.IsNullOrEmpty(entity.meta_keyword))
                {
                    entity.meta_keyword = entity.tag;
                }
                if (string.IsNullOrEmpty(entity.meta_description))
                {
                    entity.meta_description = entity.description_content;
                }

                entity.created_at = DateTime.Now;
                entity.modified_at = DateTime.Now;
                entity.view_count = 0;
                entity.share_count = 0;
                db.contents.Add(entity);
                db.SaveChanges();

                //process tag
                if (!string.IsNullOrEmpty(entity.tag))
                {
                    string[] tags = entity.tag.Split(',');
                    foreach (var tag in tags)
                    {
                        var tag_id = StringHelper.ToUnsignString(tag);
                        var existedTag = this.Check_Tag(tag_id);

                        //insert to tag table
                        if (!existedTag)
                        {
                            this.Insert_Tag(tag_id, tag);
                        }
                        //insert to entity tag
                        this.Insert_ContentTag(entity.id, tag_id);
                    }
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Insert_ContentTag(long content_id, string tag_id)
        {
            try
            {
                var info = new content_tag();
                info.idx_content_id = content_id;
                info.idx_tag_id = tag_id;
                db.content_tag.Add(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update_Content(content entity)
        {
            try
            {
                //process alias
                if (string.IsNullOrEmpty(entity.meta_title))
                {
                    entity.meta_title = StringHelper.ToUnsignString(entity.name);
                }

                var info = db.contents.Find(entity.id);
                info.name = entity.name;
                info.meta_title = entity.meta_title;
                info.description_content = entity.description_content;
                info.url_image = entity.url_image;
                info.detail = entity.detail;
                info.content_category_id = entity.content_category_id;
                info.tag = entity.tag;
                info.seo_title = entity.seo_title;
                info.modified_by = entity.modified_by;
                info.modified_at = DateTime.Now;
                info.meta_keyword = entity.meta_keyword;
                info.meta_description = entity.meta_description;
                info.is_active = entity.is_active;
                info.is_top_hot = entity.is_top_hot;
                db.SaveChanges();

                //process tag
                if (!string.IsNullOrEmpty(entity.tag))
                {
                    this.RemoveAll_ContentTag(entity.id);
                    string[] tags = entity.tag.Split(',');
                    foreach (var tag in tags)
                    {
                        var tag_id = StringHelper.ToUnsignString(tag);
                        var existedTag = this.Check_Tag(tag_id);

                        //insert to to tag table
                        if (!existedTag)
                        {
                            var resultTag = this.Insert_Tag(tag_id, tag);
                        }

                        //insert to entity tag
                        var resultcontentTag = this.Insert_ContentTag(entity.id, tag_id);
                    }
                }
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        
        public bool Delete_Content(long id)
        {
            try
            {
                var info = db.contents.Find(id);
                db.contents.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool ChangeActive(long id)
        {
            var info = db.contents.Find(id);
            info.is_active = !info.is_active;
            db.SaveChanges();
            return info.is_active;
        }

        public bool IncreaseViewCount(long id)
        {
            try
            {
                var info = db.contents.Find(id);
                info.view_count += 1;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public bool IncreaseShareCount(long id)
        {
            try
            {
                var info = db.contents.Find(id);
                info.share_count += 1;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public bool ChangeTopHot(long id)
        {
            var info = db.contents.Find(id);
            info.is_top_hot = !info.is_top_hot;
            db.SaveChanges();
            return info.is_top_hot;
        }

        public content Get_By_Id(long id)
        {
            return db.contents.Find(id);
        }

        public IEnumerable<content> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.contents
                        select a;
            return model.OrderByDescending(x => x.created_at).ToPagedList(page, page_size);
        }


        // system processing

        /// <summary>
        /// long ID
        /// </summary>
        /// <returns></returns>
        public List<content> ListAll()
        {
            var model = from a in db.contents
                        where a.is_active == true
                        select a;
            return model.OrderBy(x => x.created_at).ToList();
        }

        public List<content> ListContent_ViewCount_Des(int record = 0)
        {
            var model = from a in db.contents
                        select a;
            if (record != 0)
            {
                return model.OrderByDescending(x => x.view_count).Take(record).ToList();
            }
            else
            {
                return model.OrderByDescending(x => x.view_count).ToList();
            }
        }

        public IEnumerable<content> ListContent_ByCategory(int content_category_id, ref int total_record, int page, int page_size)
        {
            var model = db.contents.Where(x=>x.content_category_id == content_category_id);
                         
            return model.OrderBy(x => x.created_at).ToPagedList(page, page_size);
        }

        public bool Check_Tag(string id)
        {
            return db.tags.Count(x => x.id == id) > 0;
        }

        public bool Insert_Tag(string id, string name)
        {
            try
            {
                var info = new tag();
                info.id = id;
                info.name = name;
                db.tags.Add(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool RemoveAll_ContentTag(long content_id)
        {
            try
            {
                db.content_tag.RemoveRange(db.content_tag.Where(x => x.idx_content_id == content_id));
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public int Check_TotalShareContent()
        {
            if (db.contents.Count() > 0)
            {
                int total = db.contents.Sum(x => x.share_count);
                return total;
            }
            else
            {
                return 0;
            }
        }

        public int Check_TotalViewContent()
        {
            if(db.contents.Count() > 0)
            {
                int total = db.contents.Sum(x => x.view_count);
                return total;
            }
            else
            {
                return 0;
            }
        }


        // client processing

        /// <summary>
        /// lấy bài viết theo alias của loại bài biet meta_title 
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns> 
        public IEnumerable<content> ListContent_By_SlugCategory(ref int total_record,string slug_cate, int page = 1, int pagesize = 10)
        {
            if(db.content_category.Count(x=>x.meta_title == slug_cate) > 0 == false  )
            {
                return null;
            }
            var model_view =  from a in db.contents
                              join b in db.content_category on a.content_category_id equals b.id
                              where b.meta_title == slug_cate
                              select a;
            total_record = model_view.Count();
            return model_view.Where(x => x.is_active == true).OrderByDescending(x => x.created_at).ToPagedList(page, pagesize);
        }

        public IEnumerable<content> ListContent_By_SearchQuery(ref int total_record,string query = null,int page = 1, int pagesize = 10)
        {
            if (query != null)
            {
                //unuicode query 
                query = StringHelper.ToUnUnicode(query.ToLower());

                var model = from a in db.contents
                                 where a.meta_title.Contains(query)
                                 select a;
               
                total_record = model.Count();
                if (total_record == 0)
                {
                    var model_all = db.contents;
                    total_record = model_all.Count();

                    return model_all.Where(x => x.is_active == true).OrderByDescending(x => x.created_at).ToPagedList(page, pagesize);
                }

                return model.Where(x => x.is_active == true).OrderByDescending(x => x.created_at).ToPagedList(page, pagesize);
            }
            else
            {
                var model = db.contents;
                total_record = model.Count();

                return model.Where(x => x.is_active == true).OrderByDescending(x => x.created_at).ToPagedList(page, pagesize);
            }
        }

        /// <summary>
        /// lấy bài viết theo alias tag 
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns> 
        public IEnumerable<content> ListContent_By_TagID(ref int total_record, string tag_id, int page = 1, int pagesize = 10)
        {
            if (db.content_tag.Count(x => x.idx_tag_id == tag_id) > 0 == false)
            {
                var model = db.contents;
                total_record = model.Count();
                return model.Where(x => x.is_active == true).OrderByDescending(x => x.created_at).ToPagedList(page, pagesize);
            }
            else
            {
                var model = from a in db.contents
                                 join c in db.content_tag on a.id equals c.idx_content_id
                                 where c.idx_tag_id == tag_id
                                 select a;
                total_record = model.Count();

                //if search not find any content
                if(total_record == 0)
                {
                    var model_all = db.contents;
                    total_record = model_all.Count();
                    return model_all.Where(x => x.is_active == true).OrderByDescending(x => x.created_at).ToPagedList(page, pagesize);
                }
                return model.Where(x => x.is_active == true).OrderByDescending(x => x.created_at).ToPagedList(page, pagesize);
            }
        }

        /// <summary>
        /// Lấy chi tiết bài viết theo long ID
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns>
        public content View_DetailContent_By_ID(long contentID)
        {
            if(db.contents.Count(x=>x.id == contentID) > 0 == false)
            {
                return null;
            }
            var model_view = db.contents.Where(x => x.id == contentID);
                              
            return model_view.FirstOrDefault();
        }

        /// <summary>
        /// is_top_hot = true by int category id , cate = 0 - default get by all category
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns>
        public List<content> ListTopHotContent_By_Category(int cate = 0,int num_content = 5)
        {
            if(cate == 0)
            {
                var model_view = db.contents.Where(x => x.is_active == true);
                return model_view.Where(x => x.is_top_hot == true).OrderByDescending(x => x.created_at).Take(num_content).ToList();
            }
            else
            {
                var model_view = db.contents.Where(x => x.content_category_id == cate && x.is_active == true);
                return model_view.Where(x => x.is_top_hot == true).OrderByDescending(x => x.created_at).Take(num_content).ToList();
            }
        }

        /// <summary>
        /// Top view_count by int category , cate = 0 - default get by all category
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns>
        public List<content> ListTopViewContent_By_Category(int cate = 0, int num_content = 5)
        {
            if (cate == 0)
            {
                var model_view = db.contents.Where(x => x.is_active == true);
                return model_view.OrderByDescending(x => x.view_count).Take(num_content).ToList();
            }
            else
            {
                var model_view = db.contents.Where(x => x.content_category_id == cate && x.is_active == true);
                return model_view.OrderByDescending(x => x.view_count).Take(num_content).ToList();
            }
        }

        /// <summary>
        /// LEss view_count by int category , cate = 0 - default get by all category
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns>
        public List<content> ListLessViewContent_By_Category(int cate = 0, int num_content = 5)
        {
            if (cate == 0)
            {
                var model_view = db.contents.Where(x => x.is_active == true);
                return model_view.OrderBy(x => x.view_count).Take(num_content).ToList();
            }
            else
            {
                var model_view = db.contents.Where(x => x.content_category_id == cate && x.is_active == true);
                return model_view.OrderBy(x => x.view_count).Take(num_content).ToList();
            }
        }

        /// <summary>
        /// Top new by int category , cate = 0 - default get by all category
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns>
        public List<content> ListTopNewContent_By_Category(int cate = 0, int num_content = 5)
        {
            if (cate == 0)
            {
                var model_view = db.contents.Where(x => x.is_active == true);
                return model_view.OrderByDescending(x => x.created_at).Take(num_content).ToList();
            }
            else
            {
                var model_view = db.contents.Where(x => x.content_category_id == cate && x.is_active == true);
                return model_view.OrderByDescending(x => x.created_at).Take(num_content).ToList();
            }
        }

        /// <summary>
        /// Lấy bài viết cùng chủ đề theo long-content id
        /// </summary>
        /// <param name="cate"></param>
        /// <param name="num_content"></param>
        /// <returns></returns>
        public List<content> ListTopView_RelatedPost_By_ContentID(long contentID, int num_content = 5)
        {
            if(db.contents.Count(x=>x.id == contentID) > 0 == false )
            {
                ListTopViewContent_By_Category(0, num_content);
            }

            //get info by content id
            var cate = db.contents.Find(contentID);
            var model_view = from a in db.contents
                             where a.id != contentID && a.content_category_id == cate.content_category_id
                             select a;
            return model_view.Where(x=>x.is_active == true).OrderByDescending(x => x.view_count).Take(num_content).ToList();
        }
    }
}
