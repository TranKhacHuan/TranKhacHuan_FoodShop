using Models.DAO;
using Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TranKhacHuanFoodShop.Areas.Admin.Controllers
{
    public class HomeController : BaseController
    {
        
        // GET: Admin/Home
        public ActionResult Index()
        {
            ViewBag.Products = new ProductDao().CountProduct();
            ViewBag.Orders = new OrderDao().CountOrder();
            ViewBag.Feedbacks = new ContactDao().CountFeedBack();
            return View();
        }    

    }
}