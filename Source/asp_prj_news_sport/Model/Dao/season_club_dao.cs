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
    public class season_club_dao
    {
        news_sportDbContext db = null;
        public season_club_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(season_club entity)
        {
            try
            {
                //thêm CLB vào mùa giải
                db.season_club.Add(entity);

                //thêm CLB vào bảng xếp hạng
                var info_rank = new rank();
                info_rank.footballClub_id = entity.idx_fooballClub_id;
                info_rank.season_id = entity.idx_season_id;
                info_rank.win_match_guest = 0;
                info_rank.win_match = 0;
                info_rank.lose_match = 0;
                info_rank.draw_match = 0;
                info_rank.win_score = 0;
                info_rank.lose_score = 0;

                new rank_dao().Insert(info_rank);

                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(season_club entity)
        {
            try
            {
                var info = db.season_club.Find(entity.id);
                info.idx_fooballClub_id = entity.idx_fooballClub_id;
                info.idx_season_id = entity.idx_season_id;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public bool DeleteByID(int id)
        {
            try
            {
                var info = db.season_club.Find(id);
                db.season_club.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        
        public bool DeleteByUniqueID(string seasonID,string clubID)
        {
            try
            {
                var seasonClub = db.season_club.Where(x=>x.idx_season_id == seasonID && x.idx_fooballClub_id == clubID).FirstOrDefault();
                var rank = db.ranks.Where(x => x.footballClub_id == seasonClub.idx_fooballClub_id && x.season_id == seasonID).SingleOrDefault();

                db.ranks.Remove(rank);
                db.season_club.Remove(seasonClub);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public season_club Get_By_Id(int id)
        {
            return db.season_club.Find(id);
        }

        public IEnumerable<season_club> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.season_club
                        select a;
            return model.OrderByDescending(x => x.idx_season_id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// int ID
        /// </summary>
        /// <returns></returns>
        public List<season_club> ListAll()
        {
            var model = from a in db.season_club
                        select a;
            return model.OrderByDescending(x => x.idx_season_id).ToList();
        }
    }
}
