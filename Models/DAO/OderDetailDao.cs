using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models.EF;
using Models.ViewModel;

namespace Models.DAO
{
    public class OrderDetailDao
    {
        FoodShopDbContext db = null;

        public OrderDetailDao()
        {
            db = new FoodShopDbContext();
        }
        public bool Insert(OrderDetail detail)
        {
            try
            {
                db.OrderDetails.Add(detail);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public List<OrderViewModel> ViewDetail(int id)
        {
            var model = from a in db.Orders
                        join b in db.OrderDetails

                        on a.ID equals b.OrderID

                        join c in db.Products

                        on b.ProductID equals c.ID

                        select new OrderViewModel()
                        {
                            ID = a.ID,
                            CreatedDate = a.CreatedDate,
                            ShipName = a.ShipName,
                            ShipMobile = a.ShipMobile,
                            ShipAddress = a.ShipAddress,
                            ShipEmail = a.ShipEmail,
                            ProductName = c.Name,
                            Quantity = b.Quantity,
                            Price = b.Price,
                            Image = c.Image
                        };
            return model.Where(x => x.ID == id).ToList();
        }

       
    }
}


