using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteClothesStore.Models;

namespace WebSiteClothesStore.Controllers
{
    public class ThanhVienController : Controller
    {
        MydataContext context = new MydataContext();
        // GET: ThanhVien
        public ActionResult ListTV()
        {
            var All_tv = context.ThanhViens;
            return View(All_tv);
        }
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
            ThanhVien tv = context.ThanhViens.FirstOrDefault(s => s.MaTV == id);
            if (tv == null)
                return HttpNotFound();
            return View(tv);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ThanhVien bsp)
        {
            /*if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }*/
            if (ModelState.IsValid)
            {
                try
                {
                    var editbsp = context.ThanhViens.FirstOrDefault(b => b.MaTV == bsp.MaTV);
                    editbsp.TaiKhoan = bsp.TaiKhoan;
                    editbsp.MatKhau = bsp.MatKhau;
                    editbsp.HoTen = bsp.HoTen;
                    editbsp.DiaChi = bsp.DiaChi;
                    editbsp.Email = bsp.Email;
                    editbsp.SDT = bsp.SDT;
                    editbsp.CauHoi = bsp.CauHoi;

                    context.SaveChanges();
                    return View("ListTV", context.ThanhViens);
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
        public ActionResult Delete(int id)
        {
            var D_sach = context.ThanhViens.First(m => m.MaTV == id);
            return View(D_sach);
        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            var D_sach = context.ThanhViens.Where(m => m.MaTV == id).First();
            context.ThanhViens.Remove(D_sach);
            context.SaveChanges();
            return RedirectToAction("ListTV");
        }
        public ActionResult Create()
        {
            /*if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }*/
            var listCategory = context.ThanhViens;
            ViewBag.ListTV = listCategory;
            return View();
        }
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            /*if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }*/
            
            var tk = collection["TaiKhoan"];
            var mk = collection["MatKhau"];
            var hoten = collection["HoTen"];
            var diachi = collection["DiaChi"];
            var email = collection["Email"];
            var sdt = collection["SDT"];
            var cauhoi = collection["CauHoi"];


            ThanhVien tv = new ThanhVien()
            {
                TaiKhoan = tk,
                MatKhau = mk,
                HoTen = hoten,
                DiaChi = diachi,
                Email = email,
                SDT = sdt,
                CauHoi = cauhoi

            };
            context.ThanhViens.Add(tv);
            context.SaveChanges();

            // không được
            return RedirectToAction("ListTV");

        }
    }
}