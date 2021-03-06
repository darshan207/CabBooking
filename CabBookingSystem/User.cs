using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace CabBookingSystem
{
    public class User
    {
        [DataMember]
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int userId { get; set; }
        [DataMember]
        public string first_name { get; set; }
        [DataMember]
        public string last_name { get; set; }
        [DataMember]
        public string gender { get; set; }
        [DataMember]
        public int age { get; set; }
        [DataMember]
        public string address { get; set; }
        [DataMember]
        public string mobile { get; set; }
        [DataMember]
        public string email { get; set; }
        [DataMember]
        public bool is_driver { get; set; }
    }
}
