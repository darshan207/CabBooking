using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CabBookingSystem
{
    public class UserService : IUser
    {
        UserContext uc = new UserContext();
        public bool AddUser(User user)
        {
            uc.Users.Add(user);
            uc.SaveChanges();
            return true;
        }


        public bool UpdateUser(User user)
        {
            User u1 = uc.Users.Find(user.userId);
            u1.address = user.address;
            u1.first_name = user.first_name;
            u1.last_name = user.last_name;
            u1.gender = user.gender;
            u1.mobile = user.mobile;
            u1.age = user.age;
            u1.email = user.email;
            u1.is_driver = user.is_driver;
            uc.Users.AddOrUpdate(u1);
            uc.SaveChanges();
            return true;

        }

        public bool DeleteUser(int userId)
        {
            User u1 = uc.Users.Find(userId);
            uc.Users.Remove(u1);
            uc.SaveChanges();
            return true;
        }

        public User FindUser(int userId)
        {
            User u1 = uc.Users.Find(userId);
            return u1;
        }

        public IEnumerable<User> GetUsers()
        {
            return uc.Users;
        }
    }
}
