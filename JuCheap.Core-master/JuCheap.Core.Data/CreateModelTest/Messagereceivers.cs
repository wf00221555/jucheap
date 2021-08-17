using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Messagereceivers
    {
        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public bool IsDeleted { get; set; }
        public bool IsReaded { get; set; }
        public string MessageId { get; set; }
        public DateTime? ReadDate { get; set; }
        public string UserId { get; set; }

        public virtual Messages Message { get; set; }
    }
}
