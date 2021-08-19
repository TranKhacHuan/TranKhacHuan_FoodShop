using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models.EF;
using PagedList;

namespace Models.DAO
{
    public class UserDao
    {
        FoodShopDbContext db = null;
        public UserDao()
        {
            db = new FoodShopDbContext();
        }
        public long Insert(User entity)
        {
            
            db.Users.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }

        public User ViewDetail(int id)
        {
            return db.Users.Find(id);
        }
        public bool Update(User entity)
        {
            try
            {
                var user = db.Users.Find(entity.ID);
                user.UserName = entity.UserName;
                user.Password = entity.Password;
                user.GroupID = entity.GroupID;
                user.Name = entity.Name;
                user.Address = entity.Address;
                user.Phone = entity.Phone;
                
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }


        public bool Delete(int id)
        {
            try
            {
                var user = db.Users.Find(id);
                db.Users.Remove(user);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public IEnumerable<User> ListAllPaging(int page, int pageSize)
        {      
            return db.Users.OrderByDescending(x =>x.CreatedDate).ToPagedList(page,pageSize);
        }


        public User GetById(string userName)
        {
            return db.Users.SingleOrDefault(x => x.UserName == userName);
        }
       
        public bool Login(string userName, string passWord)
        {
            var result = db.Users.Count(x => x.UserName == userName && x.Password == passWord);
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool CheckUserName(string userName)
        {
            return db.Users.Count(x => x.UserName == userName) > 0;
        }

        public bool CheckEmail(string email)
        {
            return db.Users.Count(x => x.Email == email) > 0;
        }
    }
}
