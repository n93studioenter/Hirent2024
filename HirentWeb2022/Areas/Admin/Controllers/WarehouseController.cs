using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml.Wordprocessing;
using HirentWeb2022.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HirentWeb2022.Areas.Admin.Controllers
{
    public class WarehouseController : Controller
    {
        // GET: Admin/Warehouse
        public ActionResult Info()
        {
            using(var db=new HirentEntities())
            {
                var model = db.tb_WareHouse.ToList();
                return View(model);
            }
            
        }
        public bool SaveData(tb_WareHouse data)
        {
            try
            {
                using (var db = new HirentEntities())
                {
                    if (data.whId == 0)
                    {
                        data.createTime = DateTime.Now;
                        
                    }
                    data.NgayTaoChinhSach = DateTime.Now;
                    db.tb_WareHouse.AddOrUpdate(data);
                    db.SaveChanges();
                }
                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
           
        }

        public JsonResult GetWasehouseById(int whId)
        {
            using (var db = new HirentEntities())
            {
                var model = db.tb_WareHouse.Find(whId);
                return Json(model, JsonRequestBehavior.AllowGet);
            }
               
        }
        public ActionResult WasehouseTime(int whId)
        {
            using(var db=new HirentEntities())
            {
                ViewBag.Wasehouse = db.tb_WareHouse.Find(whId);
                var model = db.tb_WareHouse_Time.Where(m => m.whId == whId).ToList();
                //
                string fromdate = "";
                foreach(var item in model)
                {
                    fromdate += item.FromDayOfWeek;
                }
                ViewBag.Fromdate = fromdate;
                return View(model);
            }
        }
        public bool SaveData2(string  data)
        {
            tb_WareHouse_Time tb_WareHouse_Time = JsonConvert.DeserializeObject<tb_WareHouse_Time>(data);

            try
            {
                using (var db = new HirentEntities())
                {
                    db.tb_WareHouse_Time.AddOrUpdate(tb_WareHouse_Time);
                    db.SaveChanges();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        public JsonResult GetWasehouseTimeById(int whtid)
        {
            using (var db = new HirentEntities())
            {
                var model = db.tb_WareHouse_Time.Find(whtid);
                return Json(model, JsonRequestBehavior.AllowGet);
            }
        }
        public bool WaseHouseTimeDelete(int whtid)
        {
            using (var db = new HirentEntities())
            {
                var model = db.tb_WareHouse_Time.Find(whtid);
                db.tb_WareHouse_Time.Remove(model);
                db.SaveChanges();
                return true;
            }

        }
    }
}