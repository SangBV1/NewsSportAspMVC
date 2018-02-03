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
    public class rank_dao
    {
        news_sportDbContext db = null;
        public rank_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(rank entity)
        {
            try
            {
                db.ranks.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(string seasonID)
        {
            try
            {
                SetRankToDefault(seasonID);
                var list_match_club = db.matches.Where(x => x.season_id == seasonID);

                foreach (var match in list_match_club)
                {
                    if (match.score != "0")
                    {
                        int home_score = int.Parse(match.score.Substring(0, 1));
                        int guest_score = int.Parse(match.score.Substring(match.score.Length - 1, 1));

                        if (home_score > guest_score)
                        {
                            //update win club
                            var club_win = db.ranks.Where(x => x.footballClub_id == match.home_club && x.season_id == seasonID).SingleOrDefault();
                            club_win.win_match += 1;
                            club_win.win_score += home_score;
                            club_win.lose_score += guest_score;

                            //update lose club
                            var club_lose = db.ranks.Where(x => x.footballClub_id == match.guest_club && x.season_id == seasonID).SingleOrDefault();
                            club_lose.lose_match += 1;
                            club_lose.win_score += guest_score;
                            club_lose.lose_score += home_score;

                        }
                        else if (home_score < guest_score)
                        {
                            //update win club
                            var club_win = db.ranks.Where(x => x.footballClub_id == match.guest_club && x.season_id == seasonID).SingleOrDefault();
                            club_win.win_match += 1;
                            club_win.win_match_guest += 1;
                            club_win.win_score += guest_score;
                            club_win.lose_score += home_score;

                            //update lose club
                            var club_lose = db.ranks.Where(x => x.footballClub_id == match.home_club && x.season_id == seasonID).SingleOrDefault();
                            club_lose.lose_match += 1;
                            club_lose.win_score += home_score;
                            club_lose.lose_score += guest_score;
                        }
                        // draw match 
                        else
                        {
                            // club_win and club_lose same

                            var club_win = db.ranks.Where(x => x.footballClub_id == match.home_club && x.season_id == seasonID).SingleOrDefault();
                            club_win.draw_match += 1;
                            club_win.win_score += home_score;
                            club_win.lose_score += guest_score;

                            var club_lose = db.ranks.Where(x => x.footballClub_id == match.guest_club && x.season_id == seasonID).SingleOrDefault();
                            club_lose.draw_match += 1;
                            club_lose.win_score += guest_score;
                            club_lose.lose_score += home_score;
                        }
                    }
                }

                db.SaveChanges();
                return true;
            }
            catch (DbEntityValidationException e)
            {
                return false;
            }

        }

        public bool Delete(int id)
        {
            try
            {
                var info = db.ranks.Find(id);
                db.ranks.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public rank Get_By_Id(int id)
        {
            return db.ranks.Find(id);
        }

        public IEnumerable<rank> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.ranks
                        select a;
            return model.OrderByDescending(x => x.season_id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// order by DESC season_id
        /// </summary>
        /// <returns></returns>
        public List<rank> ListAll()
        {
            var model = from a in db.ranks
                        select a;
            return model.OrderByDescending(x => x.season_id).ToList();
        }

        public void SetRankToDefault(string seasonID)
        {
            try
            {
                var rank_model = db.ranks.Where(x => x.season_id == seasonID);
                foreach (var item in rank_model)
                {
                    item.win_match = 0;
                    item.win_match_guest = 0;
                    item.lose_match = 0;
                    item.draw_match = 0;
                    item.win_score = 0;
                    item.lose_score = 0;
                }    

                db.SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public IEnumerable<rank> ListClubRank_BySeason(ref string seasonID, string sortType1 = "totalScore", string sortType2 = "goalDifference", string sortType3 = "winScore", string sortType4 = "winScoreGuest")
        {
            string tmp_seasonID = seasonID;
            var rule = new general_rule_dao().GetRule();
            var result = new season_dao().CheckSeason(seasonID);
            IEnumerable<rank> model = null ;

            if(result)
            {
                model = db.ranks.Where(x => x.season_id == tmp_seasonID);
            }
            else
            {
                string current_season = db.seasons.OrderByDescending(x => x.display_order).Select(x => x.id).First().ToString();
                model = db.ranks.Where(x => x.season_id == current_season);
                seasonID = current_season;
            }

            // Sắp xếp bảng xếp hạng theo 4 điều lệ truyền vào
            // Theo thứ tứ từ sortType1,2,3,4
            switch (sortType1)
            {
                //Rơi vào thứ tự sắp đầu tiên theo điều kiện
                case "totalScore":
                    {
                        switch(sortType2)
                        {
                            //Rơi vào thứ tự sắp đầu tiên + thứ 2 theo điều kiện
                            case "goalDifference":
                                {
                                    //Rơi vào thứ tự sắp đầu tiên + thứ 2 + thứ 3 theo điều kiện
                                    switch (sortType3)
                                    {
                                        //Rơi vào thứ tự sắp đầu tiên + thứ 2 + thứ 3 + thứ 4(là loại cuối) theo điều kiện
                                        case "winScore":
                                            {
                                                model = model.OrderByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => x.win_match_guest).ToList();
                                                break;
                                            }
                                        case "winScoreGuest":
                                            {
                                                model = model.OrderByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => x.win_score).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                            //Kết thúc kiểm tra thứ tự ưu tiên thứ 2
                            case "winScore":
                                {
                                    switch (sortType3)
                                    {
                                        case "goalDifference":
                                            {
                                                model = model.OrderByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_match_guest).ToList();
                                                break;
                                            }
                                        case "winScoreGuest":
                                            {
                                                model = model.OrderByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_score - x.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                            case "winScoreGuest":
                                {
                                    switch (sortType3)
                                    {
                                        case "goalDifference":
                                            {
                                                model = model.OrderByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_score).ToList();
                                                break;
                                            }
                                        case "winScore":
                                            {
                                                model = model.OrderByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => x.win_score).ThenByDescending(x => (x.win_score - x.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                        }
                        break;
                    }
                //Kết thúc kiểm tra thứ tự ưu tiên thứ 1
                case "goalDifference":
                    {
                        switch (sortType2)
                        {
                            case "totalScore":
                                {
                                    switch (sortType3)
                                    {
                                        case "winScore":
                                            {
                                                model = model.OrderByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => x.win_match_guest).ToList();
                                                break;
                                            }
                                        case "winScoreGuest":
                                            {
                                                model = model.OrderByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => x.win_score).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                            case "winScore":
                                {
                                    switch (sortType3)
                                    {
                                        case "totalScore":
                                            {
                                                model = model.OrderByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_match_guest).ToList();
                                                break;
                                            }
                                        case "winScoreGuest":
                                            {
                                                model = model.OrderByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                            case "winScoreGuest":
                                {
                                    switch (sortType3)
                                    {
                                        case "totalScore":
                                            {
                                                model = model.OrderByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => x.win_score).ToList();
                                                break;
                                            }
                                        case "winScore":
                                            {
                                                model = model.OrderByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => x.win_match_guest).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                        }
                        break;
                    }
                case "winScore":
                    {
                        switch (sortType2)
                        {
                            case "totalScore":
                                {
                                    switch (sortType3)
                                    {
                                        case "goalDifference":
                                            {
                                                model = model.OrderByDescending(x => x.win_score).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_match_guest).ToList();
                                                break;
                                            }
                                        case "winScoreGuest":
                                            {
                                                model = model.OrderByDescending(x => x.win_score).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_score - x.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                            case "goalDifference":
                                {
                                    switch (sortType3)
                                    {
                                        case "totalScore":
                                            {
                                                model = model.OrderByDescending(x => x.win_score).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_match_guest).ToList();
                                                break;
                                            }
                                        case "winScoreGuest":
                                            {
                                                model = model.OrderByDescending(x => x.win_score).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                            case "winScoreGuest":
                                {
                                    switch (sortType3)
                                    {
                                        case "totalScore":
                                            {
                                                model = model.OrderByDescending(x => x.win_score).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => (x.win_score - x.lose_score)).ToList();
                                                break;
                                            }
                                        case "goalDifference":
                                            {
                                                model = model.OrderByDescending(x => x.win_score).ThenByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                        }
                        break;
                    }
                case "winScoreGuest":
                    {
                        switch (sortType2)
                        {
                            case "totalScore":
                                {
                                    switch (sortType3)
                                    {
                                        case "goalDifference":
                                            {
                                                model = model.OrderByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_score).ToList();
                                                break;
                                            }
                                        case "winScore":
                                            {
                                                model = model.OrderByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => (x.win_score - x.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                            case "goalDifference":
                                {
                                    switch (sortType3)
                                    {
                                        case "totalScore":
                                            {
                                                model = model.OrderByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => x.win_score).ToList();
                                                break;
                                            }
                                        case "winScore":
                                            {
                                                model = model.OrderByDescending(x => x.win_match_guest).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => x.win_score).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                            case "winScore":
                                {
                                    switch (sortType3)
                                    {
                                        case "totalScore":
                                            {
                                                model = model.OrderByDescending(x => x.win_match_guest).ThenByDescending(x => x.win_score).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ThenByDescending(x => (x.win_score - x.lose_score)).ToList();
                                                break;
                                            }
                                        case "goalDifference":
                                            {
                                                model = model.OrderByDescending(x => x.win_match_guest).ThenByDescending(x => x.win_score).ThenByDescending(x => (x.win_score - x.lose_score)).ThenByDescending(x => (x.win_match * rule.win_score) + (x.draw_match * rule.draw_score) + (x.lose_match * rule.lose_score)).ToList();
                                                break;
                                            }
                                    }
                                    break;
                                }
                        }
                        break;
                    }
            }
            return model.ToList();
        }

    }
}
