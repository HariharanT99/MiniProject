using DAL.IConfiguration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Service
{
    public class GenericService
    {
        protected IUnitOfWork UnitOfWork;
        public GenericService(IUnitOfWork uow)
        {
            this.UnitOfWork = uow;
        }
    }
}
