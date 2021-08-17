using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Rolemenus
    {
        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public bool IsDeleted { get; set; }
        public string MenuId { get; set; }
        public string RoleId { get; set; }

        public virtual Menus Menu { get; set; }
        public virtual Roles Role { get; set; }
    }
}
