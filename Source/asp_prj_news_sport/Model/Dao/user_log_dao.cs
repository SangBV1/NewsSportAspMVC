using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PagedList;
using Model.EF;
using CommonPublic;

namespace Model.Dao
{
    public class user_log_dao
    {
        news_sportDbContext db = null;
        public user_log_dao()
        {
            db = new news_sportDbContext();
        }

        //common lib

        /// <summary>
        /// return  1 : success
        /// return  0 : error ,
        /// return -1 : Name_log exist,
        /// return -2 : error - comfirm password ,
        /// return -3 : Email exist 
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        public int Insert(user_log entity,string comfirm_password = null)
        {      
            try
            {
                if (!Check_Username(entity.name_log,0))
                {
                    if(entity.password_log != comfirm_password)
                    {
                        return -2;
                    }
                    else if (Check_Email(entity.email,0))
                    {
                        return -3;
                    }
                    else
                    {
                        entity.password_log = Encryptor.MD5Hash(entity.password_log);
                        entity.created_at = DateTime.Now;
                        entity.modified_at = DateTime.Now;
                        db.user_log.Add(entity);
                        db.SaveChanges();
                        return 1;
                    }
                }
                else
                {
                    return -1;
                }
            }
            catch (Exception)
            {
                return 0;
            }
        }

        /// <summary>
        /// return  1 : success
        /// return  0 : error ,
        /// return -1 : error - comfirm password ,
        /// return -2 : Email exist 
        /// </summary>
        /// <param name="entity"></param>
        /// <param name="comfirm_password"></param>
        /// <returns></returns>
        public int Update(user_log entity, string comfirm_password = null)
        {
            try
            {
              
                if (entity.password_log != comfirm_password)
                {
                    return -1;
                }
                else if (Check_Email(entity.email, entity.id))
                {
                    return -2;
                }
                else
                {
                    //get info user by id
                    var info = db.user_log.Find(entity.id);
                    //update field
                    if (!string.IsNullOrEmpty(entity.password_log))
                    {
                        entity.password_log = Encryptor.MD5Hash(entity.password_log);
                        info.password_log = entity.password_log;
                    }
                    info.name_person = entity.name_person;
                    info.address_current = entity.address_current;
                    info.email = entity.email;
                    info.phone = entity.phone;
                    info.user_group_id = entity.user_group_id;
                    info.modified_by = entity.modified_by;
                    info.modified_at = DateTime.Now;
                    info.is_active = entity.is_active;
                    db.SaveChanges();
                    return 1;
                }
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public bool Delete(long id)
        {
            try
            {
                var info = db.user_log.Find(id);
                db.user_log.Remove(info);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool ChangeActive(long id)
        {
            var info = db.user_log.Find(id);
            info.is_active = !info.is_active;
            db.SaveChanges();
            return info.is_active;
        }

        public user_log Get_By_Id(long userLogID)
        {
            if (Check_UserLog(userLogID))
            {
                return db.user_log.SingleOrDefault(x => x.id == userLogID);
            }
            else
            {
                return null;
            }
        }

        public user_log Get_By_Username(string username)
        {
            return db.user_log.SingleOrDefault(x => x.name_log == username);
        }
        public IEnumerable<user_log> ListAllPaging(int page, int page_size)
        {
            var model = from a in db.user_log
                         select a;
            return model.OrderBy(x => x.user_group_id).ToPagedList(page, page_size);
        }

        //system processing

        public List<string> Get_List_Credential(string username)
        {
            var user = db.user_log.Single(x => x.name_log == username);
            var data = (from a in db.user_credential
                        join b in db.user_group on a.idx_user_group_id equals b.id
                        join c in db.user_role on a.idx_user_role_id equals c.id
                        where b.id == user.user_group_id
                        select new
                        {
                            RoleID = a.idx_user_role_id,
                            UserGroupID = a.idx_user_group_id
                        }).AsEnumerable().Select(x => new user_credential()
                        {
                            idx_user_role_id = x.RoleID,
                            idx_user_group_id = x.UserGroupID
                        });
            return data.Select(x => x.idx_user_role_id).ToList();

        }

        /// <summary>
        /// return -4  system prevent login //
        /// return -3  not belong to user group //
        /// return -2  wrong password //
        /// return -1  not active //
        /// return 0  not exist //
        /// return 1  valid //
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <param name="is_login_admin"></param>
        /// <returns></returns>
        public int Login(string username, string password, bool is_login_admin = false)
        {
            var result = db.user_log.SingleOrDefault(x => x.name_log == username);
            if (result == null)
            {
                return 0;
            }
            else
            {
                if (is_login_admin == true)
                {
                    if (result.user_group_id == CommonPublic.CommonConstants.ADMIN_GROUP || result.user_group_id == CommonPublic.CommonConstants.MOD_GROUP || result.user_group_id == CommonPublic.CommonConstants.MEMBER_GROUP)
                    {
                        if (result.is_active == false)
                        {
                            // account not active
                            return -1;
                        }
                        else
                        {
                            if (result.password_log == password)
                                return 1;
                            else
                                //wrong password
                                return -2;
                        }
                    }
                    else
                    {
                        //not belong to user_group
                        return -3;
                    }
                }
                else
                {
                    // system prevent
                    return -4;
                }
            }
        }

        public bool Check_UserLog(long userLogID)
        {
            return db.user_log.Count(x => x.id == userLogID) > 0;
        }

        /// <summary>
        /// check username exsit,
        /// default userLogID = 0 => check all,
        /// userLogID != 0 => check except ID
        /// </summary>
        /// <param name="username"></param>
        /// <param name="userLogID"></param>
        /// <returns></returns>
        public bool Check_Username(string username,long userLogID)
        {
            if(userLogID != 0)
            {
                var model_except = db.user_log.Where(x => x.id != userLogID);
                return model_except.Count(x => x.name_log == username) > 0;
            }
            else
            {
                return db.user_log.Count(x => x.name_log == username) > 0;
            }
        }

        /// <summary>
        /// check email exsit,
        /// default userLogID = 0 => check all,
        /// userLogID != 0 => check except ID
        /// </summary>
        /// <param name="email"></param>
        /// <param name="userLogID"></param>
        /// <returns></returns>
        public bool Check_Email(string email, long userLogID)
        {
            if (userLogID != 0)
            {
                var model_except = db.user_log.Where(x => x.id != userLogID);
                return model_except.Count(x => x.email == email) > 0;
            }
            else
            {
                return db.user_log.Count(x => x.email == email) > 0;
            }
        }
    }
}
