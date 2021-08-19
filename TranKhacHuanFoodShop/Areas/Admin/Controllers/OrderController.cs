using Models.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TranKhacHuanFoodShop.Areas.Admin.Controllers
{
    public class OrderController : Controller
    {
        // GET: Admin/Order
        public ActionResult Index(int page = 1, int pageSize = 8)
        {
            var dao = new OrderDao();
            var model = dao.ListAllPaging(page, pageSize);
            return View(model);
        }

        public ActionResult OrderDetail(int id)
        {
            var order_detail = new OrderDetailDao().ViewDetail(id);
            return View(order_detail);
        }


        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new OrderDao().Delete(id);
            return RedirectToAction("Index");
        }
    }
}