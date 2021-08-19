using Models.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TranKhacHuanFoodShop.Common;
using TranKhacHuanFoodShop.Models;


namespace TranKhacHuanFoodShop.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            var productDao = new ProductDao();
            ViewBag.NewProducts = productDao.ListNewProduct(3);
            ViewBag.ListFeatureProducts = productDao.ListFeatureProduct(3);
            ViewBag.ListDrinkProducts = productDao.ListDrinkProduct(3);
            ViewBag.HotProdcuts = productDao.ListHotProduct(4);
            return View();
        }


        [ChildActionOnly]
        public ActionResult MainMenu()
        {
            var model = new MenuDao().ListByGroupId(1);
            return PartialView(model);
        }

        [ChildActionOnly]
        public ActionResult TopMenu()
        {
            var model = new MenuDao().ListByGroupId(2);
            return PartialView(model);
        }

        
       
       

        [ChildActionOnly]
        public PartialViewResult HeaderCart()
        {
            var cart = Session[CommonConstants.CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            return PartialView(list);
        }

       
    }
}