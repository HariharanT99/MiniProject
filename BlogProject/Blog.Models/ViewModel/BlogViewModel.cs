using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Blog.Models.ViewModel
{
    public class BlogViewModel
    {
        public int BlogId { get; set; }

        public string BlogTitle { get; set; }

        public string BlogContent { get; set; }

        public Array Comment { get; set; }
    }
}

