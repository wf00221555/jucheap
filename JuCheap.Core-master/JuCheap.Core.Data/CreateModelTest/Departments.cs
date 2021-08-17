using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Departments
    {
        public Departments()
        {
            Users = new HashSet<Users>();
        }

        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public string FullName { get; set; }
        public bool IsDeleted { get; set; }
        public string Name { get; set; }
        public string ParentId { get; set; }
        public string PathCode { get; set; }

        public virtual ICollection<Users> Users { get; set; }
    }
}
