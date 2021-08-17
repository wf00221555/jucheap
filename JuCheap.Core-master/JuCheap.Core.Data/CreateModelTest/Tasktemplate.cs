using System;
using System.Collections.Generic;

namespace JuCheap.Core.Data.CreateModelTest
{
    public partial class Tasktemplate
    {
        public Tasktemplate()
        {
            Tasktemplateform = new HashSet<Tasktemplateform>();
            Tasktemplatestep = new HashSet<Tasktemplatestep>();
        }

        public string Id { get; set; }
        public DateTime CreateDateTime { get; set; }
        public string CreateUserId { get; set; }
        public bool IsDeleted { get; set; }
        public string Name { get; set; }
        public int Step { get; set; }

        public virtual ICollection<Tasktemplateform> Tasktemplateform { get; set; }
        public virtual ICollection<Tasktemplatestep> Tasktemplatestep { get; set; }
    }
}
