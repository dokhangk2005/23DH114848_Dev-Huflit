using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace tuan1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult bai3_lap01a()
        {
            return View();
        }

        public ActionResult bai2_1_lap01b()
        {
            ViewBag.Message = "Gop";

            return View();
        }

        public ActionResult bai2_2_lap01b()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult bai2_3_lab01b()
        {
            ViewBag.Message = "lai la gop";

            return View();
        }
        public ActionResult bai3_lab01b()
        {
            ViewBag.Message = "Thong tin sinh vien";

            return View();
        }
        public ActionResult bai1_lab01a()
        {
            return View();
        }
        public ActionResult bai2_lab01a()
        {
            return View();
        }
        public ActionResult bai4_lab01b()
        {
            return View();
        }
        public ActionResult bai5_lab01b()
        {
            return View();
        }
        public ActionResult intro()
        {
            return View();
        }
        public ActionResult sale()
        {
            return View();
        }
        public ActionResult New()
        {
            return View();
        } 
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult home()
        {
            return View();
        }
        public ActionResult product()
        {
            return View();
        }

    }
}