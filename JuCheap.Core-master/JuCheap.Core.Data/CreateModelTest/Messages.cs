using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Messages
    {
        public Messages()
        {
            Messagereceivers = new HashSet<Messagereceivers>();
        }

        public string Id { get; set; }
        public string Contents { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public bool IsDeleted { get; set; }
        public int ReadedNumber { get; set; }
        public string Title { get; set; }
        public int Total { get; set; }

        public virtual ICollection<Messagereceivers> Messagereceivers { get; set; }
    }
}
