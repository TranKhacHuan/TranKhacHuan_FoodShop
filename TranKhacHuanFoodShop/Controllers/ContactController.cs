using Models.DAO;
using Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TranKhacHuanFoodShop.Controllers
{
    public class ContactController : Controller
    {
        // GET: Contact
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public JsonResult Send(string name,string phone,string email,string mess)
        {
            var feedback = new Feedback();
            feedback.Name = name;
            feedback.Phone = phone;
            feedback.CreatedDate = DateTime.Now;
            feedback.Email = email;
            feedback.Content = mess;

            var id = new ContactDao().InsertFeedBack(feedback);
            if (id > 0)
                return Json(new
                {
                    status = true
                });

            else

                return Json(new
                {
                    status = false
                });
        }
    }
}