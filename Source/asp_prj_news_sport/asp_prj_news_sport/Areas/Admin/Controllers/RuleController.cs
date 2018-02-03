using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using asp_prj_news_sport.Common;

namespace asp_prj_news_sport.Areas.Admin.Controllers
{
    public class RuleController : BaseController
    {
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Index()
        {
            var dao = new general_rule_dao();
            var model = dao.GetRule();
            return View(model);
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create()
        {
            return View();
        }

        [HttpGet]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(int id)
        {
            var model = new general_rule_dao().Get_By_Id(id);
            return View(model);
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Create(general_rule rule)
        {
            if (ModelState.IsValid)
            {
                var dao = new general_rule_dao();

                bool result = dao.Insert(rule);
                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_InsertSuccess, "success");
                    return RedirectToAction("Index", "Rule");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.InsertRuleFailed);
                }
            }
            return View();
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult Edit(general_rule rule)
        {
            if (ModelState.IsValid)
            {
                var dao = new general_rule_dao();
                
                var result = dao.Update(rule);
                if (result == 1)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Rank");
                }
                else if( result == -2)
                {
                    ModelState.AddModelError("", "Sai điều lệ: Điểm Thắng > Hòa > Thua");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateRuleFailed);
                }
            }
            return View("Index");
        }

        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult EditSortRule(string sort_type1, string sort_type2, string sort_type3, string sort_type4)
        {
            if (ModelState.IsValid)
            {
                var dao = new general_rule_dao();

                //tạo chuỗi dk sắp xếp BXH phân cách bởi dấu ","
                string str_sortRule = sort_type1 + "," + sort_type2 + "," + sort_type3 + "," + sort_type4;
                var result = dao.UpdateSortRule(str_sortRule);

                if (result)
                {
                    SetAlert(StaticResources.Resources.Pub_UpdateSucess, "success");
                    return RedirectToAction("Index", "Rank");
                }
                else
                {
                    ModelState.AddModelError("", StaticResources.Resources.UpdateRuleFailed);
                }
            }
            return RedirectToAction("Index", "Rank");
        }

        // Xóa 1 hoặc nhiều dòng được check
        // ids được truyền Ajax là chuỗi chứa 1 hoặc nhiều id ngăn cách bởi dấu ,
        [HttpPost]
        [HasCredential(RoleID = CommonPublic.CommonConstants.MANAGE_SPORT)]
        public ActionResult DeleteAllChecked(string ids)
        {
            if (ids != "" && ids != null)
            {
                string[] array_id = ids.Split(',');
                var dao = new general_rule_dao();
                foreach (var id in array_id)
                {
                    dao.Delete(int.Parse(id));
                }
            }
            return RedirectToAction("Index");
        }

    }
}