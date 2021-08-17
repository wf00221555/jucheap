using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Tasktemplatestep
    {
        public Tasktemplatestep()
        {
            Tasktemplatestepoperate = new HashSet<Tasktemplatestepoperate>();
        }

        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public bool IsDeleted { get; set; }
        public int Order { get; set; }
        public string StepName { get; set; }
        public string TemplateId { get; set; }

        public virtual Tasktemplate Template { get; set; }
        public virtual ICollection<Tasktemplatestepoperate> Tasktemplatestepoperate { get; set; }
    }
}
