using BLL;
using DAL.Data;
using System;

namespace DebugConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            //var uof = new UnitOfWork("Server=TRAINEE-05;Database=InterviewManagementSystem;User Id=SA;Password=harant@26031999");

            var service = new Service("Server=TRAINEE-05;Database=InterviewManagementSystem;User Id=SA;Password=harant@26031999");

            var data = service.AdminService.GetAllDesignation();
            
            Console.WriteLine(data);
            Console.Read();
        }
    }
}
