using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;
using Model.Dao;
using CommonPublic;

namespace Model.Dao
{
    public class footballer_dao
    {
        news_sportDbContext db = null;
        public footballer_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib

        /// <summary>
        /// return 1(success),return -1(error-insert),return -2(error-age),
        /// return -3(club have enough player),return -4(club have enough foreign footballer)
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Insert(footballer entity)
        {
            try
            {
                // check age in accordance with the regulations
                var info_rule = db.general_rule.FirstOrDefault();
                var age_footballer = DateTime.Now.Year - entity.birth_date.Value.Year;
                var num_footballer_in_club = new football_club_dao().CountAllFootballerInclub(entity.footballClub_id);
                var num_foreignFootballer_in_club = new football_club_dao().CountAllForeignFootballerInclub(entity.footballClub_id);

                if (age_footballer < info_rule.min_age || age_footballer > info_rule.max_age)
                {
                    return -2;
                }
                else if(num_footballer_in_club >= info_rule.max_footballer)
                {
                    return -3;
                }
                else if (entity.footballer_type_id == "FOREIGN" && num_foreignFootballer_in_club >= info_rule.max_foreign_footballer)
                {
                    return -4;
                }

                db.footballers.Add(entity);
                db.SaveChanges();
                return 1;
            }
            catch (Exception)
            {
                return -1;
            }
        }

        /// <summary>
        /// return 1(success),return -1(error-insert),return -2(error-age),
        /// return -3(club have enough foreign footballer)
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Update(footballer entity)
        {
            try
            {
                // check age in accordance with the regulations
                var info_rule = db.general_rule.FirstOrDefault();
                var age_footballer = DateTime.Now.Year - entity.birth_date.Value.Year;
                var num_foreignFootballer_in_club = new football_club_dao().CountAllForeignFootballerInclub(entity.footballClub_id);

                if (age_footballer < info_rule.min_age || age_footballer > info_rule.max_footballer)
                {
                    return -2;
                }
                else if (entity.footballer_type_id == "FOREIGN" && num_foreignFootballer_in_club >= info_rule.max_foreign_footballer)
                {
                    return -3;
                }

                var info = db.footballers.Find(entity.id);
                info.name = entity.name;
                info.birth_date = entity.birth_date;
                info.hometown = entity.hometown;
                info.position = entity.position;
                info.footballer_type_id = entity.footballer_type_id;
                info.footballClub_id = entity.footballClub_id;
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
                var info = db.footballers.Find(id);
                db.footballers.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public footballer Get_By_Id(int id)
        {
            return db.footballers.Find(id);
        }


        /// <summary>
        /// Get all footballer by Club -> Season -> All
        /// Tham biến seasonID
        /// </summary>
        /// <param name="seasonID"></param>
        /// <param name="page"></param>
        /// <param name="page_size"></param>
        /// <param name="club_id"></param>
        /// <returns></returns>
        public IEnumerable<footballer> ListAllPaging(ref string seasonID, int page, int page_size,string club_id = null)
        {
            var result_club = new football_club_dao().CheckFootballClub(club_id);
            var result_season = new season_dao().CheckSeason(seasonID);
            var tmp_seasonID = seasonID;

            //Duyệt theo thứ tự ưu tiên club -> season 
            if (result_club)
            {
                var model = from a in db.footballers
                            where a.footballClub_id == club_id
                            select a;
                seasonID = null;
                return model.OrderBy(x => x.id).ToPagedList(page, page_size);
            }
            else if(result_season)
            {
                var model = (from fl in db.footballers
                            from m in db.matches
                            from mg in db.match_goal
                            where (mg.match_id == m.id && m.season_id == tmp_seasonID && mg.footballer_id == fl.id)
                            select fl).Distinct();
                return model.OrderBy(x => x.name).ToPagedList(page, page_size);
            }
            else
            {
                seasonID = null;
                return db.footballers.OrderBy(x => x.footballClub_id).ToPagedList(page, page_size);
            }
        }

        public IEnumerable<footballer> ListFootballer_SearchByQuery(int page, int page_size, string query)
        {
            // unicode column name of table ,query string
            var model = db.footballers.Where(
                            delegate (footballer fl)
                            {
                                if (StringHelper.ToUnUnicode(fl.name.ToLower()).Contains(StringHelper.ToUnUnicode(query.ToLower())))
                                    return true;
                                else
                                    return false;
                            });
                              
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// order by football_club id
        /// </summary>
        /// <returns></returns>
        public List<footballer> ListAll()
        {
            var model = from a in db.footballers
                        select a;
            return model.OrderBy(x => x.footballClub_id).ToList();
        }

        //Lấy tất cả cầu thủ có trong trận đấu của 2 đội
        //Theo id trận đấu truyền vào lấy id 2 đội
        public List<footballer> ListAll_ByMatchID(int? matchID)
        {
            var result_match = new match_dao().CheckMatch(matchID);
            if (result_match)
            {
                var model = from a in db.footballers
                            from b in db.matches
                            where (b.id == matchID && (a.football_club.id == b.home_club || a.football_club.id == b.guest_club))
                            select a;
                return model.OrderBy(x => x.name).ToList();
            }
            else
            {
                var model = from a in db.footballers
                            select a;
                return model.OrderBy(x => x.name).ToList();
            }
        }

    }
}
