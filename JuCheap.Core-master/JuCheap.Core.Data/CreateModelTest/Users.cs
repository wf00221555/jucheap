using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Users
    {
        public Users()
        {
            Userroles = new HashSet<Userroles>();
        }

        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public string DepartmentId { get; set; }
        public string Email { get; set; }
        public bool IsDeleted { get; set; }
        public bool IsSuperMan { get; set; }
        public string LoginName { get; set; }
        public string Password { get; set; }
        public string RealName { get; set; }

        public virtual Departments Department { get; set; }
        public virtual ICollection<Userroles> Userroles { get; set; }
    }
}
