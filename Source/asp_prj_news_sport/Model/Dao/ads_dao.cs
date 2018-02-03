using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class ads_dao
    {
        news_sportDbContext db = null;
        public ads_dao()
        {
            db = new news_sportDbContext();
        }
        //common lib
        public bool Insert(advertisement entity)
        {
            try
            {
                entity.created_at   = DateTime.Now;
                entity.modified_at  = DateTime.Now;
                entity.click_count  = 0;
                db.advertisements.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(advertisement entity)
        {
            try
            {
                var info = db.advertisements.Find(entity.id);
                info.url_image = entity.url_image;
                info.url_source = entity.url_source;
                info.description_ad = entity.description_ad;
                info.display_order = entity.display_order;
                info.advertisement_position_id = entity.advertisement_position_id;
                info.modified_by = entity.modified_by;
                info.modified_at = DateTime.Now;
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
                var info = db.advertisements.Find(id);
                db.advertisements.Remove(info);
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
            var info = db.advertisements.Find(id);
            info.is_active = !info.is_active;
            db.SaveChanges();
            return info.is_active;
        }

        public bool IncreaseClickCount(int id)
        {
            try
            {
                var info = db.advertisements.Find(id);
                info.click_count += 1;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public advertisement Get_By_Id(int id)
        {
            return db.advertisements.Find(id);
        }

        public IEnumerable<advertisement> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.advertisements
                         select a;
            return model.OrderByDescending(x => x.advertisement_position_id).ToPagedList(page, page_size);
        }


        //system processing
        public List<advertisement> ListAd_ClickCount_Des(int record = 0)
        {
            var model = from a in db.advertisements
                        select a;
            if (record != 0)
            {
                return model.OrderByDescending(x => x.click_count).Take(record).ToList();
            }
            else
            {
                return model.OrderByDescending(x => x.click_count).ToList();
            }
        }

        /// <summary>
        /// input advertisement_position_id , take 1 - random
        /// </summary>
        /// <param name="position_id"></param>
        /// <returns></returns>
        public advertisement Get_By_Postion(string position_id, int number_ad = 0)
        {
            var model = db.advertisements.Where(x => x.advertisement_position_id == position_id && x.is_active == true);
            Random rand = new Random();
            int toSkip = rand.Next(0, model.Count());
            return model.OrderBy(x => x.created_at).Skip(toSkip).Take(1).First();
        }

        public int Check_TotalClickAd()
        {
            if (db.advertisements.Count() > 0)
            {
                int total = db.advertisements.Sum(x => x.click_count);
                return total;
            }
            else
            {
                return 0;
            }
        }

        public advertisement GetAdvertisement_By_Type(string type)
        {
            if(db.advertisement_position.Count(x=>x.id == type) > 0 == false)
            {
                return null;
            }
            var model = db.advertisements.Where(x => x.advertisement_position_id == type && x.is_active == true);
            Random rand = new Random();
            int toSkip = rand.Next(0, model.Count());

            return model.OrderBy(x => x.created_at).Skip(toSkip).Take(1).First();
        }

        //client

        /// <summary>
        /// Lấy tất quảng cáo active theo loại 
        /// </summary>
        /// <returns></returns>
        public List<advertisement> ListAd_ByPostion(string position_id)
        {
            return db.advertisements.Where(x => x.advertisement_position_id == position_id && x.is_active == true).OrderBy(x => x.display_order).ToList();
        }
    }
}
