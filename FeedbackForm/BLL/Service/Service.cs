using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL.Interface;
using DAL.Data;
using DAL.IConfiguration;

namespace BLL.Service
{
    public class Service : IService
    {
        private readonly UnitOfWork _uow;

        public Service(string connectionString)
        {
            this._uow = new UnitOfWork(connectionString);
        }
    }
}
