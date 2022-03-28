using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CabBookingSystem
{
    public class UserContext : DbContext
    {
        public UserContext() : base("name=User")
        {

        }
        public DbSet<User> Users { get; set; }
    }
}
