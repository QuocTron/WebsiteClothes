﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteClothesStore.Models;

namespace WebSiteClothesStore.Controllers
{
    public class CTSanPhamController : Controller
    {
        MydataContext context = new MydataContext();
        // GET: CTSanPham
        public ActionResult ListCTSanPham()
        {
            var All_sp = context.CTSanPhams;
            return View(All_sp);
        }
        //edit
        public ActionResult Edit(int? id)
        {
            /*if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }*/
            if (id == null)
            {
                return HttpNotFound();
            }
            CTSanPham ctsp = context.CTSanPhams.FirstOrDefault(s => s.MaCT == id);
            if (ctsp == null)
                return HttpNotFound();
            return View(ctsp);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(CTSanPham bsp)
        {
            /*if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }*/
            if (ModelState.IsValid)
            {
                try
                {
                    var editbsp = context.CTSanPhams.FirstOrDefault(b => b.MaCT == bsp.MaCT);
                    editbsp.KichThuoc = bsp.KichThuoc;
                    editbsp.SoLuongTon = bsp.SoLuongTon;
                    

                    context.SaveChanges();
                    return View("ListSanPham", context.CTSanPhams);
                }
                catch (Exception)
                {
                    return HttpNotFound();
                }

            }
            else
            {
                ModelState.AddModelError("", "Input error!");
                return View(bsp);
            }

        }
        public ActionResult Details(int id)
        {
            var D_ct = context.CTSanPhams.FirstOrDefault(m => m.MaCT == id);
            return View(D_ct);
        }
        public ActionResult Delete(int id)
        {
            var D_sach = context.CTSanPhams.First(m => m.MaCT == id);
            return View(D_sach);
        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var D_sach = context.CTSanPhams.Where(m => m.MaCT == id).First();
            context.CTSanPhams.Remove(D_sach);
            context.SaveChanges();
            return RedirectToAction("ListCTSanPham");
        }
    }
}