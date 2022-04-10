using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteClothesStore.Models;

namespace WebSiteClothesStore.Controllers
{
    public class DonDatHangController : Controller
    {
        MydataContext context = new MydataContext();
        // GET: DonDatHang
        public ActionResult ListDonHangDaGiao()
        {
            if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }
            var listDonHang = context.DonDatHangs.Where(p=>p.DaDat==true && p.DaThanhToan==true && p.DaHuy!=true && p.TinhTrangDDH.Contains("Đã giao")).OrderBy(p => p.NgayDat);
            return View(listDonHang);
        }
        public ActionResult ListDonHangDangGiao()
        {
            if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }
            var listDonHang = context.DonDatHangs.Where(p => p.DaDat == true && p.DaThanhToan != true && p.DaHuy != true).OrderBy(p=>p.NgayDat);
            return View(listDonHang);
        }

        public ActionResult ListDonHangDaThanhToan()
        {
            if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }
            var listDonHang = context.DonDatHangs.Where(p => p.DaDat == true && p.DaThanhToan == true && p.DaHuy != true ).OrderBy(p => p.NgayDat);
            return View(listDonHang);
        }

        public ActionResult ListDonDatHangDaHuy()
        {
            if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }
            var listDonHang = context.DonDatHangs.Where(p => p.DaDat == true && p.DaHuy == true).OrderBy(p => p.NgayDat);
            return View(listDonHang);
        }

        [HttpPost]
        public ActionResult CapNhatDonDat(int maDDH , bool status)
        {
            if (Session["TaiKhoanAdmin"] == null)
            {
                return RedirectToAction("DangNhap", "Admin");
            }
            var donHang = context.DonDatHangs.FirstOrDefault(p => p.MaDDH == maDDH);
            if (donHang != null)
            {
                donHang.TinhTrangDDH = status == true ? "Đã giao" : "Đang Giao";
                donHang.DaThanhToan = status;
                context.SaveChanges();
            }
            return Content(status.ToString());
        }

        [HttpGet]

        public ActionResult DetailDHH (int id)
        {
            var donDatHang = context.DonDatHangs.FirstOrDefault(p => p.MaDDH == id);

            var listCTDonDatHang = context.CTDonDatHangs.Where(p => p.MaDDH == id);

            ViewBag.CTDonDatHang = listCTDonDatHang;

            return View(donDatHang);
        }

        public ActionResult DeleteDDH(int id)
        {
            var listDetailDonHang = context.CTDonDatHangs.Where(p=>p.MaDDH==id);

            foreach(var item in listDetailDonHang)
            {
                var itemPro = context.CTSanPhams.FirstOrDefault(p => p.MaCT == item.MaCTSP);
                if (itemPro != null)
                {
                    itemPro.SoLuongTon += item.SoLuong;
                    context.SaveChanges();
                }
            }
            var donDatHang = context.DonDatHangs.FirstOrDefault(p => p.MaDDH == id);
            context.DonDatHangs.Remove(donDatHang);
            context.SaveChanges();
            return RedirectToAction("ListDonDatHangDaHuy", "DonDatHang");
        }
    }
}