using Models.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TranKhacHuanFoodShop.Areas.Admin.Controllers
{
    public class FeedBackController : Controller
    {
        // GET: Admin/FeedBack
        public ActionResult Index(int page = 1, int pageSize = 8)
        {
            var dao = new ContactDao();
            var model = dao.ListAllPaging( page, pageSize);           
            return View(model);
           
        }
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new ContactDao().Delete(id);
            return RedirectToAction("Index");
        }
    }
}