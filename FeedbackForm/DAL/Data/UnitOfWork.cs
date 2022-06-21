using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Data
{
    public class UnitOfWork
    {
        private readonly IDbConnection _connection;

        public UnitOfWork(string connectionString)
        {
            this._connection = new SqlConnection(connectionString);
        }

    }
}
