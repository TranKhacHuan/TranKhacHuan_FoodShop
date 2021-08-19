using System;
using System.Collections.Generic;
using Models.ViewModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models.EF;
using PagedList;

namespace Models.DAO
{
    public class OrderDao
    {
        FoodShopDbContext db = null;

        public OrderDao()
        {
            db = new FoodShopDbContext();
        }


        public IEnumerable<Order> ListAllPaging(int page, int pageSize)
        {                                                                                                                                          
            return db.Orders.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);
        }

        public int CountOrder()
        {
            var orders = db.Orders.ToList();
            return orders.Count();
        }
        public long Insert(Order order)
        {
            db.Orders.Add(order);
            db.SaveChanges();
            return order.ID;
        }

        public bool Delete(int id)
        {
            try
            {
                var order = db.Orders.Find(id);
                db.Orders.Remove(order);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}
