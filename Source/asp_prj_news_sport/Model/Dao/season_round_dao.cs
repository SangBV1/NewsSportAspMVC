using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class season_round_dao
    {
        news_sportDbContext db = null;
        public season_round_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(season_round entity)
        {
            try
            {
                db.season_round.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(season_round entity)
        {
            try
            {
                var info = db.season_round.Find(entity.id);
                info.idx_round_id = entity.idx_round_id;
                info.idx_season_id = entity.idx_season_id;
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
                var info = db.season_round.Find(id);
                db.season_round.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public season_round Get_By_Id(int id)
        {
            return db.season_round.Find(id);
        }

        public IEnumerable<season_round> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.season_round
                        select a;
            return model.OrderByDescending(x => x.season.display_order).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// int ID
        /// </summary>
        /// <returns></returns>
        public List<season_round> ListAll()
        {
            var model = from a in db.season_round
                        select a;
            return model.OrderByDescending(x => x.season.display_order).ToList();
        }
    }
}
