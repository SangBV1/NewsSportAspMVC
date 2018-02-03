using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;
using Model.Dao;
using System.Data.Entity.Validation;

namespace Model.Dao
{
    public class match_dao
    {
        news_sportDbContext db = null;
        public match_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib

        /// <summary>
        /// check match by rule, 
        /// return errorMessage + 
        /// return 1 (insert success)
        /// return -1 (insert falied)
        /// return -2 (club has played in the round ),
        /// return -3 (match has existed in the season )
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Insert(ref string errorMessage ,match entity)
        {
            try
            {
                //get info club by homeClub,guestClub
                var club_dao = new football_club_dao();
                var homeClub = club_dao.Get_By_Id(entity.home_club);
                var guestClub = club_dao.Get_By_Id(entity.guest_club);

                if (CheckNumAttendOfClub_InRound(entity.home_club,entity.round_id,entity.season_id) > 0)
                {
                    errorMessage = "CLB " + homeClub.name + " đã thi đấu trong vòng đấu đang chọn";
                    return -2;
                }
                if (CheckNumAttendOfClub_InRound(entity.guest_club, entity.round_id, entity.season_id) > 0)
                {
                    errorMessage = "CLB " + guestClub.name + " đã thi đấu trong vòng đấu đang chọn";
                    return -2;
                }
                if(CheckNumAttendOfMatch_InSeason(entity.home_club,entity.guest_club,entity.round_id, entity.season_id) > 0)
                {
                    errorMessage = "Trận đấu " + homeClub.name + "-" + guestClub.name + " đã tồn tại trong mùa giải";
                    return -3;
                }
                if(string.IsNullOrEmpty(entity.score))
                {
                    entity.score = "0";
                }
                db.matches.Add(entity);
                db.SaveChanges();

                new rank_dao().Update(entity.season_id);
                return 1;
            }
            catch (Exception)
            {
                return -1;
            }
        }

        public bool Update(match entity)
        {
            try
            {
                var info = db.matches.Find(entity.id);
                info.date_at = entity.date_at;
                info.time_at = entity.time_at;
                info.pitch = entity.pitch;
                info.home_club = entity.home_club;
                info.guest_club = entity.guest_club;
                info.score = entity.score;
                info.round_id = entity.round_id;
                info.season_id = entity.season_id;
                db.SaveChanges();

                new rank_dao().Update(entity.season_id);
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
                var info = db.matches.Find(id);
                var seasonID = info.season_id;
                db.matches.Remove(info);
                db.SaveChanges();

                new rank_dao().Update(seasonID);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public match Get_By_Id(int id)
        {
            return db.matches.Find(id);
        }

        public IEnumerable<match> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.matches
                        select a;
            return model.OrderByDescending(x => x.date_at).ToPagedList(page, page_size);
        }

        public IEnumerable<match> ListMatch_BySeasonRound(ref string seasonID, ref string roundID,int page, int page_size)
        {
            string tmp_seasonID = seasonID;
            string tmp_roundID = roundID;
            var result_season = new season_dao().CheckSeason(seasonID);
            var result_round = new round_dao().CheckRound(roundID);

            if (result_round == true && result_season == true)
            {
                var model = db.matches.Where(x=>x.season_id == tmp_seasonID && x.round_id == tmp_roundID).ToList();
                return model.OrderBy(x => x.date_at).ThenBy(x=>x.time_at).ToPagedList(page, page_size);
            }
            else
            {
                string current_season = db.seasons.OrderByDescending(x => x.display_order).Select(x => x.id).First().ToString();
                string current_round = db.rounds.OrderBy(x => x.display_order).Select(x => x.id).First().ToString();

                var model = db.matches.Where(x => x.season_id == current_season && x.round_id == current_round).ToList();

                seasonID = current_season;
                roundID = current_round;

                return model.OrderBy(x => x.date_at).ToPagedList(page, page_size);
            }
        }

        //system processing
        public List<match> ListAll()
        {
            var model = from a in db.matches
                        select a;
            return model.OrderByDescending(x => x.date_at).ToList();
        }


        /// <summary>
        /// Get all match for dropdownlist 
        /// </summary>
        /// <param name="seasonID"></param>
        /// <returns></returns>
        public List<match> ListMatch_BySeason(string seasonID)
        {
            var model = from a in db.matches
                        where a.season_id == seasonID
                        select a;
            return model.OrderByDescending(x => x.date_at).ToList();
        }

        /// <summary>
        /// Đếm số trận đấu của CLB trong mùa giải
        /// </summary>
        public int Count_Match(string footballClubID,string seasonID)
        {
            return db.matches.Where(x => (x.home_club == footballClubID || x.guest_club == footballClubID) && x.season_id == seasonID).Count();
        }

        /// <summary>
        /// Kiểm tra trân đấu có tồn tại
        /// </summary>
        /// <param name="matchID"></param>
        /// <returns></returns>
        public bool CheckMatch(int? matchID)
        {
            return db.matches.Count(x => x.id == matchID) > 0;
        }

        /// <summary>
        /// Get the match name by id,
        /// Default value = "Trống, vui lòng chọn lại"
        /// </summary>
        /// <param name="matchID"></param>
        /// <returns></returns>
        public string GetMatchName_ByMatchID(int? matchID)
        {
            var result_match = new match_dao().CheckMatch(matchID);
            var info = db.matches.Find(matchID);
            if (result_match) return (info.football_club1.name.ToString() + " - " + info.football_club.name.ToString());
            else
                return "Trống, vui lòng chọn lại";
        }

        /// <summary>
        /// check the existence of club in round by season,
        /// return number match 
        /// </summary>
        /// <param name="clubID"></param>
        /// <param name="roundID"></param>
        /// <param name="seasonID"></param>
        /// <returns></returns>
        public int CheckNumAttendOfClub_InRound(string clubID,string roundID,string seasonID)
        {
            var te =  db.matches.Where(x => x.season_id == seasonID && x.round_id == roundID && (x.home_club == clubID || x.guest_club == clubID)).Count();
            return te;
        }

        /// <summary>
        /// check the existence of match in season,
        /// return number match
        /// </summary>
        /// <param name="homeClubID"></param>
        /// <param name="guestClubID"></param>
        /// <param name="roundID"></param>
        /// <param name="seasonID"></param>
        /// <returns></returns>
        public int CheckNumAttendOfMatch_InSeason(string homeClubID,string guestClubID, string roundID, string seasonID)
        {
            return db.matches.Where(x => x.season_id == seasonID && x.home_club == homeClubID && x.guest_club == guestClubID).Count();
        }

    }
}
