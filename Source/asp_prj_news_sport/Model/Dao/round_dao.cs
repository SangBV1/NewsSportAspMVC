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
    public class round_dao
    {
        news_sportDbContext db = null;
        public round_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(round entity)
        {
            try
            {
                db.rounds.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(round entity)
        {
            try
            {
                var info = db.rounds.Find(entity.id);
                info.name = entity.name;
                info.display_order = entity.display_order;
                info.tournament_id = entity.tournament_id;
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
                var info = db.rounds.Find(id);
                db.rounds.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public round Get_By_Id(string id)
        {
            return db.rounds.Find(id);
        }

        public IEnumerable<round> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.rounds
                        select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// string ID
        /// </summary>
        /// <returns></returns>
        public List<round> ListAll()
        {
            var model = from a in db.rounds
                        select a;
            return model.OrderBy(x => x.display_order).ToList();
        }

        /// <summary>
        /// Lấy tất cả vòng đấu có trong mùa giải
        /// </summary>
        /// <returns></returns>
        public List<round> ListRound_BySeason(string seasonID)
        {
            var result = new season_dao().CheckSeason(seasonID);
            if (result)
            {
                var model = from a in db.rounds
                            join b in db.season_round
                            on a.id equals b.idx_round_id
                            where b.idx_season_id == seasonID
                            select a;
                return model.OrderBy(x => x.display_order).ToList();
            }
            else
            {
                var current_season = db.seasons.OrderByDescending(x=>x.display_order).Select(x => x.id).First().ToString();
                var model = from a in db.rounds
                            join b in db.season_round
                            on a.id equals b.idx_round_id
                            where b.idx_season_id == current_season
                            select a;
                return model.OrderBy(x => x.display_order).ToList();
            }
        }

        public bool CheckRound(string roundID)
        {
            return db.rounds.Count(x => x.id == roundID) > 0;
        }
    }
}
