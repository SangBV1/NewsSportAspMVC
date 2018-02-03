using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class tournament_dao
    {
        news_sportDbContext db = null;
        public tournament_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(tournament entity)
        {
            try
            {
                db.tournaments.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update(tournament entity)
        {
            try
            {
                var info = db.tournaments.Find(entity.id);
                info.name = entity.name;
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
                var info = db.tournaments.Find(id);
                db.tournaments.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public tournament Get_By_Id(string id)
        {
            return db.tournaments.Find(id);
        }

        public IEnumerable<tournament> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.tournaments
                        select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        /// <summary>
        /// string ID
        /// </summary>
        /// <returns></returns>
        public List<tournament> ListAll()
        {
            var model = from a in db.tournaments
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }
    }
}
