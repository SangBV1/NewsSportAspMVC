using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;
using Model.Dao;

namespace Model.Dao
{
    public class football_club_dao
    {
        news_sportDbContext db = null;
        public football_club_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(football_club entity)
        {
            try
            {
                db.football_club.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(football_club entity)
        {
            try
            {
                var info = db.football_club.Find(entity.id);
                info.name = entity.name;
                info.pitch = entity.pitch ;
                info.url_logo = entity.url_logo;
                info.phone_number = entity.phone_number ;
                info.fax_number = entity.fax_number ;
                info.address = entity.address ;
                info.coach = entity.coach ;
                info.detail = entity.detail ;
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
                var info = db.football_club.Find(id);
                db.football_club.Remove(info);
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
            var info = db.football_club.Find(id);
            info.is_active = !info.is_active;
            db.SaveChanges();
            return info.is_active;
        }

        public football_club Get_By_Id(string id = null)
        {
            if(id != null)
            {
                return db.football_club.Find(id);
            }
            else
            {
                return null;
            }
        }

        public IEnumerable<football_club> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.football_club
                        select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        public IEnumerable<football_club> ListClub_BySeason(ref string seasonID, int page, int page_size)
        {
            string tmp_seasonID = seasonID;
            var result = new season_dao().CheckSeason(seasonID);
            if (result)
            {
                var model = from a in db.football_club
                            join b in db.season_club
                            on a.id equals b.idx_fooballClub_id
                            where b.idx_season_id == tmp_seasonID
                            select a;
                return model.OrderBy(x => x.id).ToPagedList(page, page_size);
            }
            else
            {
                string current_season = db.seasons.OrderByDescending(x => x.display_order).Select(x => x.id).First().ToString();
                var model = from a in db.football_club
                            join b in db.season_club
                            on a.id equals b.idx_fooballClub_id
                            where b.idx_season_id == current_season
                            select a;
                seasonID = current_season;
                return model.OrderBy(x => x.id).ToPagedList(page, page_size);
            }
        }

        //system processing

        /// <summary>
        /// order by ACS string ID
        /// </summary>
        /// <returns></returns>
        public List<football_club> ListAll()
        {
            var model = from a in db.football_club
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }

        /// <summary>
        /// Lấy tất CLB tham gia trong mùa giải
        /// </summary>
        /// <param name="seasonID"></param>
        /// <returns></returns>
        public List<football_club> ListClub_BySeason(string seasonID)
        {
            var result = new season_dao().CheckSeason(seasonID);
            if (result)
            {
                var model = from a in db.football_club
                            join b in db.season_club
                            on a.id equals b.idx_fooballClub_id
                            where b.idx_season_id == seasonID
                            select a;
                return model.OrderBy(x => x.id).ToList();
            }
            else
            {
                var currentSeasonID = db.seasons.OrderByDescending(x => x.display_order).Select(x => x.id).FirstOrDefault().ToString();
                var model = from a in db.football_club
                            join b in db.season_club
                            on a.id equals b.idx_fooballClub_id
                            where b.idx_season_id == currentSeasonID
                            select a;
                return model.OrderBy(x => x.id).ToList();
            }
        }

        /// <summary>
        /// Kiểm tra tồn tại của club
        /// </summary>
        /// <param name="club_id"></param>
        /// <returns></returns>
        public bool CheckFootballClub(string club_id)
        {
            return db.football_club.Count(x => x.id == club_id) > 0;
        }

        public int CountAllFootballerInclub(string footballclubID)
        {
            return db.footballers.Where(x=>x.footballClub_id == footballclubID).Count();
        }

        public int CountAllForeignFootballerInclub(string footballclubID)
        {
            return db.footballers.Where(x => x.footballClub_id == footballclubID && x.footballer_type.id == "FOREIGN").Count();
        }
    }
}
