using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
namespace CabBookingRide
{
    [ServiceContract]
    public interface IRide
    {
        [OperationContract]
        bool AddRide(Ride ride);

        [OperationContract]
        bool UpdateRide(Ride ride);

        [OperationContract]
        bool DeleteRide(int rideId);

        [OperationContract]
        Ride FindRide(int rideId);

        [OperationContract]
        IEnumerable<Ride> GetRides();
    }
}