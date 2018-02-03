using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class season_dao
    {
        news_sportDbContext db = null;
        public season_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public int Insert(season entity)
        {
            try
            {
                //Thêm mùa giải
                if(entity.start_date_at >= entity.end_date_at)
                {
                    return -2;
                }
                db.seasons.Add(entity);
                db.SaveChanges();

                //Cập nhật số vòng đấu trong mua giải tương ứng với số đội tham gia
                int num_round = (int)(entity.number_club * (entity.number_club - 1) / (entity.number_club / 2));
                var model_round = db.rounds.Where(x => x.tournament_id == entity.tournamnet_id).OrderBy(x=>x.display_order).Take(num_round).ToList();
                foreach(var item in model_round)
                {
                    Insert_SeasonRound(entity.id, item.id);
                }

                return 1;
            }
            catch (Exception)
            {
                return -1;
            }
        }

        public bool Update(season entity)
        {
            try
            {
                var info = db.seasons.Find(entity.id);
                info.name = entity.name;
                info.start_date_at = entity.start_date_at;
                info.end_date_at = entity.end_date_at;
                info.number_club = entity.number_club;
                info.display_order = entity.display_order;
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
                var info = db.seasons.Find(id);
                db.seasons.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public season Get_By_Id(string id)
        {
            return db.seasons.Find(id);
        }

        public IEnumerable<season> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.seasons
                        select a;
            return model.OrderByDescending(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// string ID
        /// </summary>
        /// <returns></returns>
        public List<season> ListAll()
        {
            var model = from a in db.seasons
                        select a;
            return model.OrderByDescending(x => x.id).ToList();
        }

        public bool Insert_SeasonRound(string seasonID,string roundID)
        {
            try
            {
                var info = new season_round();
                info.idx_season_id = seasonID;
                info.idx_round_id = roundID;
                db.season_round.Add(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool CheckSeason(string season_id)
        {
            return db.seasons.Count(x => x.id == season_id) > 0;
        }
    }
}
