using Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace TranKhacHuanFoodShop.Models
{
    [Serializable]
    public class CartItem
    {
        public Product  Product { get; set; }
        public int Quantity { set; get; }

    }
}