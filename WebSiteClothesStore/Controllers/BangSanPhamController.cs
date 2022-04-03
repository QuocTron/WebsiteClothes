using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteClothesStore.Models;
namespace WebSiteClothesStore.Controllers
{
    public class BangSanPhamController : Controller
    {
        MydataContext context = new MydataContext();
        // GET: BangSanPham
        public ActionResult ListSanPham()
        {
            var All_sp = context.BangSanPhams;
            return View(All_sp);
        }
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return HttpNotFound();
            }
            BangSanPham bsp = context.BangSanPhams.FirstOrDefault(s => s.MaSP == id);
            if (bsp == null)
                return HttpNotFound();
            return View(bsp);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(BangSanPham bsp)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var editbsp = context.BangSanPhams.FirstOrDefault(b => b.MaSP == bsp.MaSP);
                    editbsp.TenSP = bsp.TenSP;
                    editbsp.LoaiSanPham.TenLoai = bsp.LoaiSanPham.TenLoai;
                    editbsp.Dongia = bsp.Dongia;
                    /*editbsp.NgapCapNhat =bsp.NgapCapNhat;*/
                    editbsp.Anh1 = bsp.Anh1;
                    editbsp.Anh2 = bsp.Anh2;
                    editbsp.Anh3 = bsp.Anh3;
                    editbsp.Anh4 = bsp.Anh4;
                    editbsp.Anh5 = bsp.Anh5;
                   
                    context.SaveChanges();
                    return View("ListSanPham", context.BangSanPhams);
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
        public string ProcessUpload(HttpPostedFileBase file)
        {
            if (file == null)
            {
                return "";
            }
            file.SaveAs(Server.MapPath("~/Content/images/" + file.FileName));
            return "/Content/images/" + file.FileName;
        }
        public ActionResult Create(BangSanPham bspCreate)
        {
            if (ModelState.IsValid)
            {

                BangSanPham bsp = bspCreate;
                var listbsp = context.BangSanPhams.ToList();
                var newId = listbsp.Max(n => n.MaSP) + 1;
                bsp.MaSP = newId;
                context.BangSanPhams.Add(bsp);
                context.SaveChanges();

                return RedirectToAction("ListSanPham");
            }
            else
            {
                // không được
                return View(new BangSanPham());
            }
        }
        public ActionResult Delete(int id)
        {
            var D_sp = context.BangSanPhams.FirstOrDefault(m => m.MaSP == id);
            return View(D_sp);
        }
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            /*if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiSanPham lsp = context.LoaiSanPhams.Where(m => m.MaLoai == id).First();
            if (lsp == null)
            {
                return HttpNotFound();
            }
            return View(lsp);*/
            var D_sp = context.BangSanPhams.Where(m => m.MaSP == id).First();
            var listCTPro = context.CTSanPhams.Where(p => p.MaSP == D_sp.MaSP);
            var listCard = context.CTDonDatHangs.Where(p => p.MaSP == D_sp.MaSP);

            foreach (var item in listCard)
            {
                using (var data = new MydataContext())
                {
                    item.MaCTSP =null;
                    item.MaSP = null;
                    // xoa tung chi tiet san pham
                    data.SaveChanges();
                }
            }
            // lay ra taat car chi tiet san pham thuoc cai sanr pham
            foreach (var item in listCTPro)
            {
                using (var data = new MydataContext())
                {
                    context.CTSanPhams.Remove(item);
                    // xoa tung chi tiet san pham
                    data.SaveChanges();
                }
            }
            context.BangSanPhams.Remove(D_sp);
            context.SaveChanges();
            return RedirectToAction("ListSanPham");
        }
    }
}