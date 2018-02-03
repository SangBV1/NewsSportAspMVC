using CommonPublic;
using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using asp_prj_news_sport.Areas.Admin.Models;
using asp_prj_news_sport.Common;

namespace asp_prj_news_sport.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/login
        public ActionResult Index()
        { 
            if(Session[Common.CommonConstants.USER_SESSION] != null)
            {
                return RedirectToAction("Index", "Home");
            }
            return View();
        }
        public ActionResult ResetPassword()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ResetPassword(string user_email)
        {
            var result_email = new user_log_dao().Check_Email(user_email, 0);
            if(result_email)
            {
                TempData["AlertMessage"] = "THÀNH CÔNG! Link thay đổi MẬT KHẨU MỚI đã được gửi tới email của bạn.";
                TempData["AlertType"] = "alert-success";
                new MailHelper().SendMail(user_email, "[VLEAGUE.VN] Khôi phục mật khẩu", "Đây là link khôi phục mk của bạn!");
            }
            else
            {
                TempData["AlertMessage"] = "Email không tồn tại";
                TempData["AlertType"] = "alert-danger";
            }
            return RedirectToAction("ResetPassword", "Login");
        }
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var dao = new user_log_dao();
                var result = dao.Login(model.username, Encryptor.MD5Hash(model.password), true);
                if (result == 1)
                {
                    var user = dao.Get_By_Username(model.username);
                    var userSession = new UserLogin();
                    userSession.username = user.name_log;
                    userSession.user_id = user.id;
                    userSession.user_group_id = user.user_group_id;
                    var listCredentials = dao.Get_List_Credential(model.username);
                    Session.Add(Common.CommonConstants.SESSION_CREDENTIALS, listCredentials);
                    Session.Add(Common.CommonConstants.USER_SESSION, userSession);
                    return RedirectToAction("Index", "Home");
                }
                else if (result == 0)
                {
                    ModelState.AddModelError("", "Tài khoản không tồn tại.");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Tài khoản đang bị khoá.");
                }
                else if (result == -4)
                {
                    ModelState.AddModelError("", "Hiện đang bảo trì , vui lòng quay lại sau.");
                }
                else
                {
                    ModelState.AddModelError("", "Username hoặc Password đăng nhập không đúng.");
                }
            }
            return View("Index");
        }

        public ActionResult Logout(LoginModel model)
        {
            Session[Common.CommonConstants.USER_SESSION] = null;
            return RedirectToAction("Index", "Login");
        }
    }
}