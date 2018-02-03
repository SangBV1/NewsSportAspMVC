using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class match_goal_dao
    {
        news_sportDbContext db = null;
        public match_goal_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib

        /// <summary>
        /// return -2 (time_at invalid)
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Insert(match_goal entity)
        {
            try
            {
                var info_rule = new general_rule_dao().GetRule();

                if(entity.time_at > info_rule.max_time_goal)
                {
                    return -2;
                }
                db.match_goal.Add(entity);
                db.SaveChanges();
                return 1;
            }
            catch (Exception)
            {
                return -1;
            }
        }

        public int Update(match_goal entity)
        {
            try
            {
                // check time_at 
                var info_rule = new general_rule_dao().GetRule();

                if (entity.time_at > info_rule.max_time_goal)
                {
                    return -2;
                }

                // for updating
                var info = db.match_goal.Find(entity.id);
                info.time_at = entity.time_at;
                info.footballer_id = entity.footballer_id ;
                info.goal_type_id = entity.goal_type_id ;
                info.match_id = entity.match_id ;
                db.SaveChanges();
                return 1;
            }
            catch (Exception)
            {
                return -1;
            }

        }

        public bool Delete(int id)
        {
            try
            {
                var info = db.match_goal.Find(id);
                db.match_goal.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public match_goal Get_By_Id(int id)
        {
            return db.match_goal.Find(id);
        }

        public IEnumerable<match_goal> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.match_goal
                        select a;
            return model.OrderBy(x => x.time_at).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// order by time_at ACS
        /// </summary>
        /// <returns></returns>
        public List<match_goal> ListAll()
        {
            var model = from a in db.match_goal
                        select a;
            return model.OrderBy(x => x.time_at).ToList();
        }

        /// <summary>
        /// Get all goal by MacthID,
        /// Acs by time
        /// </summary>
        /// <param name="matchID"></param>
        /// <returns></returns>
        public List<match_goal> ListGoal_ByMatchID(int matchID)
        {
            var model = from a in db.match_goal
                        where a.match_id == matchID
                        select a;
            return model.OrderBy(x => x.time_at).ToList();
        }

        /// <summary>
        ///Đếm tổng số bàn thắng của 1 cầu thủ trong 1 mùa giải,
        ///Default season = null -> count all 
        /// </summary>
        /// <param name="seasonID"></param>
        /// <param name="footballerID"></param>
        /// <returns></returns>
        public int CountAllGoal_BySeasonID(string seasonID = null, int? footballerID = null)
        {
            var result_season = new season_dao().CheckSeason(seasonID);
            if (result_season)
            {
                return db.match_goal.Where(x => x.match.season_id == seasonID).Count(x => x.footballer_id == footballerID);
            }
            else
            {
                return db.match_goal.Count(x => x.footballer_id == footballerID);
            }
        }

        /// <summary>
        ///Lấy các bàn thắng trong từng trận đấu,
        ///Nếu có mùa giải thì lấy tất cả bàn thắng trong mùa giải,
        ///Thay đổi tham biến
        /// </summary>
        /// <param name="matchID"></param>
        /// <param name="seasonID"></param>
        /// <param name="page"></param>
        /// <param name="page_size"></param>
        /// <returns></returns>
        public IEnumerable<match_goal> ListMatchGoal_ByMatchSeason(ref int? matchID,ref string seasonID,int page, int page_size)
        {
            int? tmp_matchID = matchID;
            string tmp_season = seasonID;
            var result_match = new match_dao().CheckMatch(matchID);
            var result_season = new season_dao().CheckSeason(seasonID);

            if (result_match == true)
            {
                var model = db.match_goal.Where(x => x.match_id == tmp_matchID).ToList();
                return model.OrderByDescending(x => x.match.date_at).ThenByDescending(x => x.match.time_at).ToPagedList(page, page_size);
            }
            else if(result_season == true)
            {
                var model = db.match_goal.Where(x => x.match.season_id == tmp_season).ToList();
                matchID = 0;//Not found
                return model.OrderByDescending(x => x.match.date_at).ThenByDescending(x => x.match.time_at).ToPagedList(page, page_size);
            }
            else
            {
                string current_season = db.seasons.OrderByDescending(x => x.display_order).Select(x => x.id).First().ToString();
                var model = db.match_goal.Where(x => x.match.season_id == current_season).ToList();
                matchID = 0; // Not found
                seasonID = current_season;
                return model.OrderByDescending(x => x.match.date_at).ThenByDescending(x => x.match.time_at).ToPagedList(page, page_size);
            }
        }

    }
}
