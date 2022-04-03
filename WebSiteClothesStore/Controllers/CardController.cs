using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteClothesStore.Models;
using WebSiteClothesStore.ModelTemp;

namespace WebSiteClothesStore.Controllers
{
    public class CardController : Controller
    {
        // GET: Card

        // GET: AddProduct

        MydataContext db = new MydataContext();
        public List<ItemCardTemp> GetGioHang()
        {
            //giỏ hàng đã tồn tại
            List<ItemCardTemp> listGioHang = Session["GioHangTam"] as List<ItemCardTemp>;
            if (listGioHang == null)
            {
                //Nếu giỏ  hàng chưa tồn tại thì khởi tạo
                listGioHang = new List<ItemCardTemp>();
                Session["GioHangTam"] = listGioHang; // session thay đổi theo list khi dữ liệu thay đổi
            }
            return listGioHang;
        }
        [HttpPost]
        public ActionResult AddProCard(int? maSP, int sLMua, int? maSize)
        {
            int maDH;
            BangSanPham sp = db.BangSanPhams.SingleOrDefault(p => p.MaSP == maSP);
            CTSanPham ctSP = db.CTSanPhams.SingleOrDefault(p => p.MaCT == maSize);
            if (sp == null || ctSP == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            
            if (Session["TaiKhoan"] == null)// nếu chưa đăng nhập
            {
                List<ItemCardTemp> listCard = GetGioHang();
                ItemCardTemp proExist = listCard.SingleOrDefault(p => p.MaSP == maSP && p.MaCT == maSize);
                if (proExist != null)// nếu đã đã có tìa khoản trong giỏ hàng
                {
                    proExist.SoLuong += sLMua;
                    proExist.ThanhTien = proExist.SoLuong * proExist.DonGia;
                }
                else
                {
                    ItemCardTemp itemCard = new ItemCardTemp(maSP, maSize);
                    if (listCard.Count() == 0)
                    {// chưa có sản phẩm
                        itemCard.MaCTDDH = 1;
                    }
                    else
                    {
                        itemCard.MaCTDDH = listCard.Count() + 1;
                    }

                    listCard.Add(itemCard);
                }
                var tongSoLuong = listCard.Sum(p => p.SoLuong);
                ViewBag.GioHangTam = listCard;
                return Content(tongSoLuong.ToString());
            }
            else// nếu đã đăng nhập
            {
                if (Session["GioHang"] == null)// tạo đơn hàng
                {
                    DonDatHang donHang = new DonDatHang();
                    donHang.DaDat = false;
                    if (Session["TaiKhoan"] != null)
                    {
                        ThanhVien tv = (ThanhVien)Session["TaiKhoan"];

                        //donHang.MaKH = db.KhachHangs.FirstOrDefault(p => p.MaTV == tv.MaTV).MaKH;
                        KhachHang client = db.KhachHangs.FirstOrDefault(p => p.MaTV == tv.MaTV);
                        if (client != null)
                        {
                            donHang.MaKH = client.MaKH;
                        }
                    }
                    db.DonDatHangs.Add(donHang);
                    db.SaveChanges();
                    Session["GioHang"] = donHang;


                }// đã có
                DonDatHang dh = (DonDatHang)Session["GioHang"];
                maDH = dh.MaDDH;
                var checkPro = db.CTDonDatHangs.FirstOrDefault(p => p.MaSP == maSP && p.MaDDH == maDH && p.MaCTSP == maSize);
                if (checkPro != null)// nếu có sản phẩm
                {
                    checkPro.SoLuong += sLMua;
                    db.SaveChanges();
                }
                else
                {
                    CTDonDatHang ctDonDatHang = new CTDonDatHang();
                    ctDonDatHang.MaDDH = maDH;
                    ctDonDatHang.MaSP = (int)maSP;
                    ctDonDatHang.SoLuong = sLMua;
                    ctDonDatHang.MaCTSP = maSize;
                    var product = db.BangSanPhams.FirstOrDefault(p => p.MaSP == maSP);
                    ctDonDatHang.TenSP = product.TenSP;
                    ctDonDatHang.DonGia = (decimal)((double)product.Dongia - ((double)product.Dongia * product.GiamGia / 100));
                    db.CTDonDatHangs.Add(ctDonDatHang);
                    db.SaveChanges();

                }
                var tongSoLuong = db.CTDonDatHangs.Where(p => p.MaDDH == maDH).Sum(p => p.SoLuong);
                return Content(tongSoLuong.ToString());
            }
        }

        public ActionResult ShowCardProduct()
        {
            if (Session["TaiKhoan"] == null)// nếu khách chưa có đăng nhập
            {
                var listCard = GetGioHang();
                ViewBag.GioHangTam = listCard;
                ViewBag.TongThanhTien = listCard.Sum(p => p.SoLuong * p.ThanhTien);
            }
            else
            {
                if (Session["GioHang"] != null)
                {
                    var card = (DonDatHang)Session["GioHang"];
                    var listDetailCart = db.CTDonDatHangs.Where(p => p.MaDDH == card.MaDDH);

                    ThanhVien tv = Session["TaiKhoan"] as ThanhVien;
                    KhachHang khachHang = db.KhachHangs.FirstOrDefault(p => p.MaTV == tv.MaTV);
                    ViewBag.KhachHang = khachHang;
                    ViewBag.GioHangCSDL = listDetailCart;
                    ViewBag.TongThanhTien = listDetailCart.Sum(p => p.SoLuong * p.DonGia);
                }
            }
            return View("ShowCardProduct");

        }
        public ActionResult PlusCountCard(int maCTDDH)
        {
            string status = null;
            if (Session["TaiKhoan"] != null)
            {
                var productUpdate = db.CTDonDatHangs.FirstOrDefault(p => p.MaCTDDH == maCTDDH);
                productUpdate.SoLuong++;
                var countExist = db.CTSanPhams.FirstOrDefault(p => p.MaCT == productUpdate.MaCTSP);
                if (countExist != null)
                {
                    if (countExist.SoLuongTon > productUpdate.SoLuong)
                    {
                        db.SaveChanges();
                        var tongSoLuong = db.CTDonDatHangs.Where(p => p.MaDDH == productUpdate.MaDDH).Sum(p => p.SoLuong);
                        ViewBag.TongSoLuong = tongSoLuong;
                        return Content(productUpdate.SoLuong.ToString());
                    }
                    else
                    {
                        status = "Không đủ số lượng sản phẩm ";
                        return Content(status);
                    }
                }
                else
                {
                    status = "Sản phẩm không tồn tại";
                    return Content(status);
                }
            }
            else
            {
                List<ItemCardTemp> listItemCard = GetGioHang();
                var productUpdateTemp = listItemCard.FirstOrDefault(p => p.MaCTDDH == maCTDDH);
                productUpdateTemp.SoLuong++;
                var countExistTemp = db.CTSanPhams.FirstOrDefault(p => p.MaCT == productUpdateTemp.MaCT);
                if (countExistTemp != null)
                {
                    if (countExistTemp.SoLuongTon > productUpdateTemp.SoLuong)
                    {
                        var tongSoLuong = listItemCard.Sum(p => p.SoLuong);
                        ViewBag.TongSoLuong = tongSoLuong;
                        return Content(productUpdateTemp.SoLuong.ToString());
                    }
                    else
                    {
                        productUpdateTemp.SoLuong--;
                        status = "Không đủ số lượng sản phẩm ";
                        return Content(status);
                    }
                }
                else
                {
                    status = "Sản phẩm không tồn tại";
                    return Content(status);
                }
            }
        }
        public ActionResult MinusCountCard(int maCTDDH)
        {
            string status = null;
            if (Session["TaiKhoan"] != null)
            {
                var productUpdate = db.CTDonDatHangs.FirstOrDefault(p => p.MaCTDDH == maCTDDH);
                productUpdate.SoLuong--;
                var countExist = db.CTSanPhams.FirstOrDefault(p => p.MaCT == productUpdate.MaCTSP);
                if (countExist != null)
                {
                    if (countExist.SoLuongTon > productUpdate.SoLuong)
                    {
                        db.SaveChanges();
                        var tongSoLuong = db.CTDonDatHangs.Where(p => p.MaDDH == productUpdate.MaDDH).Sum(p => p.SoLuong);
                        ViewBag.TongSoLuong = tongSoLuong;
                        return Content(productUpdate.SoLuong.ToString());
                    }
                    else
                    {
                        status = "Không đủ số lượng sản phẩm ";
                        return Content(status);
                    }
                }
                else
                {
                    status = "Sản phẩm không tồn tại";
                    return Content(status);
                }
            }
            else
            {
                List<ItemCardTemp> listItemCard = GetGioHang();
                var productUpdateTemp = listItemCard.FirstOrDefault(p => p.MaCTDDH == maCTDDH);
                productUpdateTemp.SoLuong--;
                var countExistTemp = db.CTSanPhams.FirstOrDefault(p => p.MaCT == productUpdateTemp.MaCT);
                if (countExistTemp != null)
                {
                    if (countExistTemp.SoLuongTon > productUpdateTemp.SoLuong)
                    {
                        var tongSoLuong = listItemCard.Sum(p => p.SoLuong);
                        ViewBag.TongSoLuong = tongSoLuong;
                        return Content(productUpdateTemp.SoLuong.ToString());
                    }
                    else
                    {
                        status = "Không đủ số lượng sản phẩm ";
                        return Content(status);
                    }
                }
                else
                {
                    status = "Sản phẩm không tồn tại";
                    return Content(status);
                }
            }
        }
        public ActionResult DeleteProductInDetailCard(int maSP, int maCTDDH, int maCTSP)
        {
            if (Session["TaiKhoan"] != null)
            {
                var productIsDeleted = db.CTDonDatHangs.FirstOrDefault(p => p.MaCTDDH == maCTDDH && p.MaCTSP == maCTSP && p.MaSP == maSP);
                List<CTDonDatHang> listDetailCart;
                if (productIsDeleted != null)
                {
                    int maDH = (int)productIsDeleted.MaDDH;
                    db.CTDonDatHangs.Remove(productIsDeleted);
                    db.SaveChanges();
                    listDetailCart = db.CTDonDatHangs.Where(p => p.MaDDH == maDH).ToList();
                }
            } else
            {
                var listItemCard = GetGioHang();
                var productDeleteed = listItemCard.FirstOrDefault(p => p.MaCT == maCTSP && p.MaCTDDH == maCTDDH && p.MaSP == maSP);
                listItemCard.Remove(productDeleteed);
            }
            return RedirectToAction("ShowCardProduct");// gọi lại action ShowCardProduct
        }

        public ActionResult OrderProducts(KhachHang kh)
        {
            int maDH=0;
            if (Session["GioHang"] == null && Session["GioHangTam"]==null)
            {
                return RedirectToAction("Index", "HomeWeb");
            }
            if (Session["TaiKhoan"] != null)
            {
                ThanhVien tv = Session["TaiKhoan"] as ThanhVien;
                KhachHang client = db.KhachHangs.FirstOrDefault(p => p.MaTV == tv.MaTV);
                if (client != null)
                {
                    client.TenKH = tv.HoTen;
                    client.DiaChi = tv.DiaChi;
                    client.SDT = tv.SDT;
                    db.SaveChanges();
                    var cardOdered = db.DonDatHangs.FirstOrDefault(p => p.MaKH == client.MaKH && p.DaDat == false);
                    if (cardOdered != null)
                    {// có đơn => cập nhật lại trạng thái đặt
                        cardOdered.MaKH = client.MaKH;
                        cardOdered.NgayDat = DateTime.Now;
                        cardOdered.NgayGiao = DateTime.Now.AddDays(4);
                        cardOdered.TinhTrangDDH = "Chưa Giao";
                        cardOdered.DaThanhToan = false;
                        cardOdered.UuDai = 0;
                        cardOdered.DaDat = true;
                        cardOdered.DaHuy = false;
                        maDH = cardOdered.MaDDH;
                        db.SaveChanges();
                        Session["GioHang"] = null;
                        ViewBag.GioHangCSDL = null;
                    }
                }
            }
            else // khách không phải là thành viên
            {
                KhachHang newClient = new KhachHang();
                newClient = kh;
                db.KhachHangs.Add(newClient);
                db.SaveChanges();

                //Thêm đơn hàng
                DonDatHang donDH = new DonDatHang();
                donDH.MaKH = newClient.MaKH;
                donDH.NgayDat =DateTime.Now;
                donDH.NgayGiao = DateTime.Parse(DateTime.Now.AddDays(4).ToLongDateString());
                donDH.TinhTrangDDH = "Chưa Giao";
                donDH.DaThanhToan = false;
                donDH.UuDai = 0;
                donDH.DaHuy = false;
                donDH.DaDat = true;
                db.DonDatHangs.Add(donDH);
                db.SaveChanges();
                List<ItemCardTemp> listGH = GetGioHang(); // nhận giá trị từ session
                foreach (var item in listGH)
                {
                    CTDonDatHang ctddh = new CTDonDatHang();
                    ctddh.MaDDH = donDH.MaDDH;
                    ctddh.MaSP = item.MaSP;
                    ctddh.MaCTSP = item.MaCT;
                    ctddh.TenSP = item.TenSP;
                    ctddh.SoLuong = item.SoLuong;
                    ctddh.DonGia = (decimal)item.DonGia;
                    db.CTDonDatHangs.Add(ctddh);
                    db.SaveChanges();
                }
                maDH = donDH.MaDDH;
                Session["GioHangTam"] = null;
                ViewBag.GioHangTam = null;
            }
            List<CTDonDatHang> listDetailProduct = db.CTDonDatHangs.Where(p => p.MaDDH == maDH).ToList();
            foreach(var item in listDetailProduct)
            {
                BangSanPham productUpdateNumberBuys = db.BangSanPhams.FirstOrDefault(p => p.MaSP == item.MaSP);
                productUpdateNumberBuys.SoLanMua+=item.SoLuong;
                CTSanPham productUpdateCount = db.CTSanPhams.FirstOrDefault(p => p.MaSP == item.MaSP && p.MaCT == item.MaCTSP);
                productUpdateCount.SoLuongTon -= item.SoLuong;
                db.SaveChanges();
            }
            return RedirectToAction("ThongBaoDatHang","Card");

        }
       public ActionResult ThongBaoDatHang()
        {
            return View();
        }

        public ActionResult VoteForProduct(int maCTDH , string status)
        {
            int like=0;
            if (status == "Yes")
            {
                like = 1;
                status = "Cảm ơn bạn đã thích sản phẩm";
            }
            else if(status=="No")
            {
                like = 0;
                status = "Xin lỗi bạn vì trãi nghiệm vừa rồi";
            }
            var updateVoteProduct = db.CTDonDatHangs.FirstOrDefault(p => p.MaCTDDH == maCTDH);
            if (updateVoteProduct != null)
            {
                updateVoteProduct.BinhChon = like;
                var updateBinhChonPro = db.BangSanPhams.FirstOrDefault(p => p.MaSP == updateVoteProduct.MaSP);
                updateBinhChonPro.LuotBinhChon += 1;
                db.SaveChanges();
            }
            return Content(status);

        }
    }
}












