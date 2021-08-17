using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Roles
    {
        public Roles()
        {
            Rolemenus = new HashSet<Rolemenus>();
            Userroles = new HashSet<Userroles>();
        }

        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public string Description { get; set; }
        public bool IsDeleted { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Rolemenus> Rolemenus { get; set; }
        public virtual ICollection<Userroles> Userroles { get; set; }
    }
}
