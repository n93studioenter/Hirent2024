using HirentWeb2022.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HirentWeb2022.Areas.Admin.Controllers
{
    public class DashboardController : Controller
    {
        // GET: Admin/Dashboard
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public int Login(string username,string password)
        {
            using(var db=new HirentEntities())
            {
                var checkLogin = db.tb_LocalAccount.Where(m => m.UserName == username && m.Password == password).FirstOrDefault();
                if(checkLogin != null)
                {
                    HttpCookie userinfo1 = new HttpCookie("hirenadmin");
                    userinfo1["username"] = checkLogin.UserName;
                    userinfo1.Expires = DateTime.Now.AddDays(2);
                    Response.Cookies.Add(userinfo1);
                }
                return checkLogin!=null?1:0;
            }
        }
    }
}