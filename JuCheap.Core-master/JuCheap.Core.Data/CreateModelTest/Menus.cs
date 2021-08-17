using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Menus
    {
        public Menus()
        {
            Rolemenus = new HashSet<Rolemenus>();
        }

        public string Id { get; set; }
        public string Code { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public string Icon { get; set; }
        public bool IsDeleted { get; set; }
        public string Name { get; set; }
        public int Order { get; set; }
        public string ParentId { get; set; }
        public string PathCode { get; set; }
        public byte Type { get; set; }
        public string Url { get; set; }

        public virtual ICollection<Rolemenus> Rolemenus { get; set; }
    }
}
