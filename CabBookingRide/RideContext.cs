using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CabBookingRide
{
    public class RideContext : DbContext
    {
        public RideContext() : base("name=Ride")
        {

        }
        public DbSet<Ride> Rides { get; set; }
    }
}