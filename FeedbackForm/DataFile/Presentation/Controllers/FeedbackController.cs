using Dapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Presentation.Models;
using Presentation.ViewModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Presentation.Controllers
{
    public class FeedbackController : Controller
    {
        protected IDbConnection connection { get; private set; }
        public FeedbackController(SqlConnection connection)
        {
            this.connection = connection;
        }
        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public List<Product> GetProduct(int id)
        {
            var param = new DynamicParameters();
            param.Add("CategoryId", id);

            var sp = "uspGetProduct @CategoryID";

            var products = connection.Query<Product>(sp, param).ToList();

            return products;
        }

        [HttpGet]
        public List<ProductCategory> GetCategory()
        {
            var sp = "uspGetCatagory";

            List<ProductCategory> categories = connection.Query<ProductCategory>(sp).ToList();

            return categories;
        }

        public void PostForm([FromForm] FormViewModel formData)
        {
            string feedbackId = GenerateID();

            string filePath = SaveFile(formData.File);

            PostFormViewModel form = new()
            {
                CategoryID = formData.Category,
                ProductID = formData.Product,
                Satisfactory = formData.Satisfactory,
                PurchasedProduct = formData.PurchasedProducts,
                Pros = formData.Pros,
                NameTitle = formData.NameTitle,
                Name = formData.Name,
                Initial = formData.Initial,
                Email = formData.Email,
                Street = formData.Street,
                City = formData.City,
                Region = formData.Region,
                ZipCode = formData.PostalCode,
                Country = formData.Country,
                Cons = formData.Cons,
                File = filePath,
                FeedbackID = feedbackId
            };

            var param = new DynamicParameters(form);

            var sp = " Exec uspInsertForm "
                    + "@CategoryID"
                    + ",@ProductID"
                    + ",@Satisfactory"
                    + ",@PurchasedProduct"
                    + ",@Pros"
                    + ",@NameTitle"
                    + ",@Name"
                    + ",@Initial"
                    + ",@Email"
                    + ",@Street"
                    + ",@City"
                    + ",@Region"
                    + ",@ZipCode"
                    + ",@Country"
                    + ",@Cons"
                    + ",@File"
                    + ",@FeedbackID";

            string result = connection.ExecuteScalar<string>(sp, param);

            if (result.ToLower() == "success")
            {
                //SendEmail(form);
            }
        }

        [NonAction]
        private void SendEmail(PostFormViewModel form)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(form.Email);
                mail.From = new MailAddress("hariharant99@gmail.com");
                mail.Subject = "Form posted successfully";
                mail.Body = Request.Form["Thank you for your feed back, Your feedback is posted successfully"];
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("hariharant99@gmail.com", "harant99");
                smtp.EnableSsl = true;

                smtp.Send(mail);
            }
            catch (Exception)
            {
                throw;
            }
        }

        [NonAction]
        private string SaveFile(IFormFile file)
        {
            try
            {
                var pathToSave = Path.Combine(Directory.GetCurrentDirectory(), "Resources");

                if (!Directory.Exists(pathToSave))
                {
                    Directory.CreateDirectory(pathToSave);
                }

                var fileName = file.FileName;

                //the final path where the file would save
                var fullPath = Path.Combine(pathToSave, fileName);

                var stream = new FileStream(fullPath, FileMode.Create);

                file.CopyTo(stream);

                stream.Close();

                return fullPath;

            }
            catch (Exception)
            {

                throw;
            }
        }

        [NonAction]
        private string GenerateID()
        {
            StringBuilder id = new();
            id.Append("GS");

            id.Append(DateTime.Now.Year.ToString());

            Random random = new();

            id.Append(random.Next(0, 999));

            return id.ToString();
        }

    }
}
