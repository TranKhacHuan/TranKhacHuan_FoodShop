using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TranKhacHuanFoodShop.Models
{
    public class LoginModel
    {
        [Key]
        [Display(Name ="Tên đăng nhập")]
        [Required(ErrorMessage ="Vui lòng nhập tài khoản của bạn")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Vui lòng nhập mật khẩu của bạn")]
        [Display(Name = "Mật khẩu")]
        
        public string Password { get; set; }
    }
}