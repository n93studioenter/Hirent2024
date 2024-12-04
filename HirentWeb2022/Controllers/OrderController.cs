﻿using DocumentFormat.OpenXml.Drawing.Charts;
using DocumentFormat.OpenXml.Office2010.Excel;
using HirentWeb2022.Models;
using HirentWeb2022.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HirentWeb2022.Controllers
{
    public class OrderController : Controller
    {
        // GET: Order
        public ActionResult YourCart(int pOrderId,int productID)
        {
            var getlang = Session["Lang"];
            if (getlang == null)
            {
                getlang = "vi";
                Session["Lang"] = "vi";
            }
            ViewBag.lang = getlang;
            HirentEntities db = new HirentEntities();
            ViewBag.pOrderId = pOrderId;
            var model = db.tb_ProductTermConditionDetails.Where(m => m.ProductId == productID).ToList();
            HttpCookie reqCookies = Request.Cookies["HirentLogin"];
            if (reqCookies != null)
            {
                var email = reqCookies["username"].ToString();
                tb_Customer tb_Customer = db.tb_Customer.Where(m => m.Email == email).FirstOrDefault();
                if (tb_Customer != null)
                {
                    ViewBag.CustomerID= tb_Customer.CustomerID;
                    var ListAddress = db.tb_CustomerDeliveryAddress.Where(m=>m.CustomerID==tb_Customer.CustomerID).ToList();
                    ViewBag.ListAddress = ListAddress;
                    ViewBag.AddressActive = ListAddress.Where(m => m.IsMacdinh == 1).FirstOrDefault();
                }
            }
            //Lấy cost
            if (model != null)
            {
                var getFirst = model.FirstOrDefault();
                ViewBag.costLaprap = getFirst.CostInstallation;
                ViewBag.costThao = getFirst.CostDelivery;
                ViewBag.costVanChuyen = getFirst.CostInstallAndDelivery;
            }
           
            return View(model);
        }

        public ActionResult LoadListAddrress()
        {
            HirentEntities db = new HirentEntities();
            HttpCookie reqCookies = Request.Cookies["HirentLogin"];
            List<tb_CustomerDeliveryAddress> model = new List<tb_CustomerDeliveryAddress>();
            if (reqCookies != null)
            {
                var email = reqCookies["username"].ToString();
                tb_Customer tb_Customer = db.tb_Customer.Where(m => m.Email == email).FirstOrDefault();
                if (tb_Customer != null)
                {
                    model = db.tb_CustomerDeliveryAddress.Where(m => m.CustomerID == tb_Customer.CustomerID).ToList();
                }
            }
            return PartialView(model);
        }
        [HttpPost]
        public bool InsertAdress(tb_CustomerDeliveryAddress data)
        {
            try
            {
                HirentEntities db = new HirentEntities();
                data.CreateDate = DateTime.Now;
                data.Status = 0;
                if (!db.tb_CustomerDeliveryAddress.Any(m => m.CustomerID==data.CustomerID))
                {
                    data.IsMacdinh = 1;
                }
                else
                {
                    data.IsMacdinh = 0;
                }
                db.tb_CustomerDeliveryAddress.Add(data);
                db.SaveChanges();
                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
          
        }

        [HttpPost]
        public void SetActive(int ID)
        {
            HirentEntities db = new HirentEntities();
            var current = db.tb_CustomerDeliveryAddress.Where(m => m.ID == ID).FirstOrDefault();
            if (current != null)
            {
                var getlist = db.tb_CustomerDeliveryAddress.Where(m => m.CustomerID == current.CustomerID).ToList();
                getlist.ForEach(m => m.IsMacdinh = 0);
                db.SaveChanges();
                current.IsMacdinh = 1;
                db.SaveChanges();
            }
        }
        public bool DeleteAddress(int ID)
        {
            HirentEntities db = new HirentEntities();
            var current = db.tb_CustomerDeliveryAddress.Where(m => m.ID == ID).FirstOrDefault();
            try
            {
                if (current != null)
                {
                    db.tb_CustomerDeliveryAddress.Remove(current);
                    db.SaveChanges();

                }
                //Cập nhật lại isactive nếu nó là isactive
                if (current.IsMacdinh == 1)
                {
                    var getlist = db.tb_CustomerDeliveryAddress.Where(m => m.CustomerID == current.CustomerID).FirstOrDefault();
                    if (getlist != null)
                    {
                        getlist.IsMacdinh = 1;
                        db.SaveChanges();
                    }
                }
                return true;
            }
            catch(Exception ex)
            {
                return false;
            }

        }

        public string LoadMacDinh(int CustomerID)
        {
            HirentEntities db = new HirentEntities();
            var current = db.tb_CustomerDeliveryAddress.Where(m => m.CustomerID == CustomerID && m.IsMacdinh==1).FirstOrDefault();
            if (current != null)
                return current.Address;
            return "";
        }

        [HttpPost]
        public bool proceedAddToCartStep3(int serviceId,int deliveryId,string deliverydes,string servicedes,int pOrderId)
        {
            try
            {
                using (HirentEntities db = new HirentEntities())
                { 

                    tb_Pre_Order_Details tb_Pre_Order_Details = db.tb_Pre_Order_Details.Where(m => m.pOrderId == pOrderId).FirstOrDefault();
                  
                    if (tb_Pre_Order_Details != null)
                    {
                        tb_Pre_Order_Details.deliveryId = deliveryId;
                        tb_Pre_Order_Details.serviceId = serviceId;
                        tb_Pre_Order_Details.GhiChuVanChuyen = deliverydes;
                        tb_Pre_Order_Details.GhichuDichVu = servicedes;

                        //Get tb_ProductTermConditionDetails
                        tb_Pre_Order tb_Pre_Order = db.tb_Pre_Order.Where(m => m.pOrderId == pOrderId).FirstOrDefault();

                        if (tb_Pre_Order != null)
                        {
                            tb_ProductTermConditionDetails gettb_ProductTermConditionDetails = db.tb_ProductTermConditionDetails.Where(m => m.ProductId == tb_Pre_Order.productId).FirstOrDefault();
                            if (gettb_ProductTermConditionDetails != null)
                            {
                                var getConLap = gettb_ProductTermConditionDetails.CostInstallation;
                                var congThao = gettb_ProductTermConditionDetails.CostDelivery;
                                var congVanChuyen = gettb_ProductTermConditionDetails.CostInstallAndDelivery;

                                //Cập nhật giá vận chuyển
                                if (deliveryId == 1)
                                {
                                    tb_Pre_Order_Details.TotalDelivery = 0;
                                }
                                if (deliveryId == 2 || deliveryId == 3)
                                {
                                    tb_Pre_Order_Details.TotalDelivery = congVanChuyen;
                                }
                                if (deliveryId == 4)
                                {
                                    tb_Pre_Order_Details.TotalDelivery = congVanChuyen*2;
                                }

                                //Cập nhật giá dịch vụ
                                if(serviceId==1|| serviceId == 2)
                                {
                                    tb_Pre_Order_Details.TotalInstall = 0;
                                }
                                if (serviceId == 3)
                                {
                                    tb_Pre_Order_Details.TotalInstall = getConLap;
                                }
                                if (serviceId == 4)
                                {
                                    tb_Pre_Order_Details.TotalInstall = congThao;
                                }
                                if (serviceId == 5)
                                {
                                    tb_Pre_Order_Details.TotalInstall = getConLap+congThao;
                                }
                                if (tb_Pre_Order_Details.TotalDelivery == null)
                                {
                                    tb_Pre_Order_Details.TotalDelivery = 0;
                                }
                                if (tb_Pre_Order_Details.TotalInstall == null)
                                {
                                    tb_Pre_Order_Details.TotalInstall = 0;
                                }
                                db.SaveChanges();
                            }
                        }
                       
                    }
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public ActionResult YourCart2()
        {
            var getlang = Session["Lang"];
            if (getlang == null)
            {
                getlang = "vi";
                Session["Lang"] = "vi";
            }
            ViewBag.lang = getlang;
            HttpCookie reqCookies = Request.Cookies["HirentLogin"];
            List<ProductOrder> model = new List<ProductOrder>();
            HirentEntities db = new HirentEntities(); 
            if (reqCookies != null)
            {
                var email = reqCookies["username"].ToString();
                tb_Customer tb_Customer = db.tb_Customer.Where(m => m.Email == email).FirstOrDefault();
                if (tb_Customer != null)
                {
                    
                    var getlistordr = db.tb_Pre_Order.Where(m => m.customerId == tb_Customer.CustomerID && m.status==1).OrderByDescending(m=>m.pOrderId).ToList();
                    foreach(var item in getlistordr)
                    {
                        ProductOrder ProductOrder = new ProductOrder();
                        ProductOrder.tb_Pre_Order = item;
                        ProductOrder.tb_Pre_Order_Details = db.tb_Pre_Order_Details.Where(m => m.pOrderId == item.pOrderId).FirstOrDefault();
                        ProductOrder.tb_Product=db.tb_Product.Where(m=>m.ProductID== item.productId).FirstOrDefault();
                        ProductOrder.tb_Pre_Order_Accompanying = db.tb_Pre_Order_accompanying.Where(m => m.pOrderId == item.pOrderId).ToList();
                        ProductOrder.tb_CustomerDeliveryAddress = db.tb_CustomerDeliveryAddress.Where(m => m.CustomerID == tb_Customer.CustomerID && m.IsMacdinh==1).FirstOrDefault();
                        model.Add(ProductOrder);
                    }
                }
            }
            else
            {

            }
            return View(model); 
        }

        [HttpPost]
        public bool HuyDonHang(int pOrderId)
        {
            try
            {

                using (var db = new HirentEntities())
                {
                    tb_Pre_Order tb_Pre_Order = db.tb_Pre_Order.Find(pOrderId);
                    if (tb_Pre_Order != null)
                    {
                        db.tb_Pre_Order.Remove(tb_Pre_Order);
                    }
                    tb_Pre_Order_Details tb_Pre_Order_Detail = db.tb_Pre_Order_Details.Where(m => m.pOrderId == pOrderId).FirstOrDefault();
                    if (tb_Pre_Order_Detail != null)
                    {
                        db.tb_Pre_Order_Details.Remove(tb_Pre_Order_Detail);
                    }
                    var tb_Pre_Order_accompanying = db.tb_Pre_Order_accompanying.Where(m => m.pOrderId == pOrderId).ToList();
                    db.tb_Pre_Order_accompanying.RemoveRange(tb_Pre_Order_accompanying);
                    db.SaveChanges();
                    return true;
                }
            }
            catch(Exception ex)
            {
                return false;
            }
        }
        [HttpPost]
        public bool HoanTatDonHang(int pOrderId)
        {
            try
            {
                using (var db = new HirentEntities())
                {
                    tb_Pre_Order tb_Pre_Order = db.tb_Pre_Order.Find(pOrderId);
                    if(tb_Pre_Order != null)
                    {
                        tb_Pre_Order.status = 2;
                        db.SaveChanges();
                       
                    }
                    return true;
                }
              
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}