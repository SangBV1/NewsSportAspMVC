using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;

namespace Model.Dao
{
    public class general_rule_dao
    {
        news_sportDbContext db = null;
        public general_rule_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib
        public bool Insert(general_rule entity)
        {
            try
            {
                db.general_rule.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        /// <summary>
        /// Cập nhật điều lệ Điểm thắng > Hòa > Thua
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Update(general_rule entity)
        {
            try
            {
                if (entity.win_score > entity.draw_score && entity.draw_score > entity.lose_score)
                {
                    var info = db.general_rule.Find(entity.id);
                    info.max_age                    = entity.max_age;
                    info.min_age                    = entity.min_age;
                    info.max_footballer             = entity.max_footballer;
                    info.max_foreign_footballer     = entity.max_foreign_footballer;
                    info.min_footballer             = entity.min_footballer;
                    info.win_score                  = entity.win_score;
                    info.lose_score                 = entity.lose_score;
                    info.draw_score                 = entity.draw_score;
                    info.max_time_goal              = entity.max_time_goal;
                    db.SaveChanges();
                    return 1;
                }
                return -2;
            }
            catch (Exception)
            {
                return -1;
            }

        }

        //Cập nhật thứ tự ưu tiên sắp xếp BXH
        //DK: chỉ tồn tại duy nhất 1 điều lệ trong bảng, tức chỉ có 1 dòng
        public bool UpdateSortRule(string str_sortRule)
        {
            try
            {
                var info = db.general_rule.FirstOrDefault();
                info.sort_rule = str_sortRule;
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
                var info = db.general_rule.Find(id);
                db.general_rule.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public general_rule Get_By_Id(int id)
        {
            return db.general_rule.Find(id);
        }

        //Lấy 4 thứ tự ưu tiên sắp xếp BXH 
        public void GetSortRule(ref string sort_type1, ref string sort_type2, ref string sort_type3, ref string sort_type4)
        {
            try
            {
                var info = db.general_rule.FirstOrDefault();
                string[] rule = info.sort_rule.Split(new char[] { ',' });
                sort_type1 = rule[0];
                sort_type2 = rule[1];
                sort_type3 = rule[2];
                sort_type4 = rule[3];
            }
            catch (Exception)
            {
                throw;
            }
        }

        //Lấy tất cả các điều lệ của giải đấu
        public general_rule GetRule()
        {
            return db.general_rule.FirstOrDefault();
        }

        public IEnumerable<general_rule> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.general_rule
                        select a;
            return model.OrderBy(x => x.id).ToPagedList(page, page_size);
        }

        //system processing

        public List<general_rule> ListAll()
        {
            var model = from a in db.general_rule
                        select a;
            return model.OrderBy(x => x.id).ToList();
        }


    }
}
