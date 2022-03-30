using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CabBookingRide
{
    public class RideService : IRide
    {
        RideContext rc = new RideContext();
        public bool AddRide(Ride ride)
        {
            rc.Rides.Add(ride);
            rc.SaveChanges();
            return true;
        }


        public bool UpdateRide(Ride ride)
        {
            Ride r1 = rc.Rides.Find(ride.rideId);
            r1.rideId = ride.rideId;
            r1.userId = ride.userId;
            r1.driverId = ride.driverId;
            r1.from = ride.from;
            r1.to = ride.to;
            rc.SaveChanges();
            return true;

        }

        public bool DeleteRide(int rideId)
        {
            Ride r1 = rc.Rides.Find(rideId);
            rc.Rides.Remove(r1);
            rc.SaveChanges();
            return true;
        }

        public Ride FindRide(int rideId)
        {
            Ride r1 = rc.Rides.Find(rideId);
            return r1;
        }

        public IEnumerable<Ride> GetRides()
        {
            return rc.Rides;
        }
    }
}