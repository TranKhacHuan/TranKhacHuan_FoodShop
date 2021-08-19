using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TranKhacHuanFoodShop.Areas.Admin.Data
{
    public class LoginModel
    {
        [Required(ErrorMessage ="Nhập Tài Khoản")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Nhập Mật Khẩu")]
        public string PassWord { get; set; }
        public bool RememberMe { get; set; }
    }
}