using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace CabBookingSystem
{
    [ServiceContract]
    public interface IUser
    {
        [OperationContract]
        bool AddUser(User user);

        [OperationContract]
        bool UpdateUser(User user);

        [OperationContract]
        bool DeleteUser(int userId);

        [OperationContract]
        User FindUser(int userId);

        [OperationContract]
        IEnumerable<User> GetUsers();
    }
}
