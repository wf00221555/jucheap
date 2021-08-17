using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Loginlogs
    {
        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public string Ip { get; set; }
        public bool IsDeleted { get; set; }
        public string LoginName { get; set; }
        public string Message { get; set; }
        public string UserId { get; set; }
    }
}
