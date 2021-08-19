using Models.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.DAO
{
    public class ContactDao
    {
        FoodShopDbContext db = null;
        public ContactDao()
        {
            db = new FoodShopDbContext();
        }

        public  int InsertFeedBack(Feedback fb)
        {
            db.Feedbacks.Add(fb);
            db.SaveChanges();
            return fb.ID;
        }
        public int CountFeedBack()
        {
            var feedback = db.Feedbacks.ToList();
            return feedback.Count();
        }

        public IEnumerable<Feedback> ListAllPaging(int page, int pageSize)
        {
            return db.Feedbacks.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);
        }

        public bool Delete(int id)
        {
            try
            {
                var feedback = db.Feedbacks.Find(id);
                db.Feedbacks.Remove(feedback);
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
