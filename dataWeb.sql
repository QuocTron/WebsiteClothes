USE [QUANAOSTORE]
GO
SET IDENTITY_INSERT [dbo].[NhaCC] ON 

INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (6, N'Nguyễn Quốc Trọn
', N'Q8
', N'anhbinhpham@yahoo.com
', 912644784)
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (7, N'Nguyễn Quốc Dũng', N'Q9', N'dkdsctm7@gmail.com', 368890843)
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (8, N'Phan Hoàng Hạc', N'Q10', N'v.thang2909@gmail.com', 966219941)
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [Email], [SDT]) VALUES (9, N'Võ Hà Nam', N'Q11', N'tendangnhap05@gmail.com', 334229954)
SET IDENTITY_INSERT [dbo].[NhaCC] OFF
GO
SET IDENTITY_INSERT [dbo].[BangSanPham] ON 

INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (10, N'Áo Thun Adidas', 1500000.0000, NULL, N'', 34, 5, 0, 6, 20, 2, NULL, N'/Content/images/AoThun2.jpg', N'/Content/images/thun5.jpg', N'/Content/images/thun4.jpg', N'/Content/images/thun3.jpg', N'/Content/images/thun2.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (14, N'Quần Adidas', 1700000.0000, NULL, N'', 40, 0, 0, 3, 20, 4, NULL, N'/Content/images/qaunshortden1.jpg', N'/Content/images/quanshortden2.jpg', N'/Content/images/qaunshortden3.jpg', N'/Content/images/qaunshortden14.jpg', N'/Content/images/qaunshortden5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (20, N'Áo mới', 20000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 2, NULL, N'/Content/images/thun4.jpg', N'/Content/images/thun2.jpg', N'/Content/images/thun3.jpg', N'/Content/images/thun5.jpg', N'/Content/images/thun2.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (21, N'Áo Khoát', 20000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 3, NULL, N'/Content/images/aokhoat1.jpg', N'/Content/images/aokhoat2.jpg', N'/Content/images/aokhoat3.jpg', N'/Content/images/aokhoat4.jpg', N'/Content/images/aokhoat5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (22, N'Quần Jean', 300000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 5, NULL, N'/Content/images/qaunjeadai1.jpg', N'/Content/images/qaunjeandai2.jpg', N'/Content/images/qaunjeandai3.jpg', N'/Content/images/qaunjeandai4.jpg', N'/Content/images/quanjeandai5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (23, N'Áo Sơ Mi', 20000.0000, NULL, N'Best Saler edit', NULL, NULL, NULL, NULL, 20, 2, NULL, N'/Content/images/somidep1.jpg', N'/Content/images/somidep2.jpg', N'/Content/images/somidep1.jpg', N'/Content/images/somidep3.jpg', N'/Content/images/somidep5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (24, N'Sơ mi trắng', 20000.0000, NULL, N'đẹp', NULL, NULL, NULL, NULL, 20, 3, NULL, N'/Content/images/soiden1.jpg', N'/Content/images/somiden2.jpg', N'/Content/images/soden3.jpg', N'/Content/images/soden4.jpg', N'/Content/images/soden5.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (25, N'Áo đồng phục', 20000.0000, NULL, N'áo rất là đep', NULL, NULL, NULL, NULL, 0, 2, NULL, N'/Content/images/Aosomi2.jpg', N'/Content/images/Aosomi3.jpg', N'/Content/images/Aosomi4.jpg', N'/Content/images/Aosomi8.jpg', N'/Content/images/Aosomi9.jpg', NULL, NULL)
INSERT [dbo].[BangSanPham] ([MaSP], [TenSP], [Dongia], [NgapCapNhat], [MoTa], [LuotXem], [LuotBinhChon], [LuotBInhLuan], [SoLanMua], [GiamGia], [MaLoai], [DaXoa], [Anh1], [Anh2], [Anh3], [Anh4], [Anh5], [MaNCC], [MaNSX]) VALUES (26, N'Aos moiws', 20000.0000, NULL, N'dep lam', NULL, NULL, NULL, NULL, 10, 2, NULL, N'/Content/images/aokhoat5.jpg', N'/Content/images/qaunshortden3.jpg', N'/Content/images/quanshortden2.jpg', N'/Content/images/qaunshortden1.jpg', N'/Content/images/qaunjeandai3.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[BangSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[CTSanPham] ON 

INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (32, N'XL', 97, NULL, 14)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (36, N'M', 0, NULL, 10)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (38, N'X', 99, NULL, 10)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (40, N'X', 93, NULL, 24)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (41, N'L', 96, NULL, 10)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (42, N'M', 100, NULL, 14)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (43, N'L', 98, NULL, 20)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (44, N'M', 99, NULL, 22)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (45, N'L', 100, NULL, 14)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (46, N'X', 2, NULL, 23)
INSERT [dbo].[CTSanPham] ([MaCT], [KichThuoc], [SoLuongTon], [Daxoa], [MaSP]) VALUES (47, N'M', 99, NULL, 23)
SET IDENTITY_INSERT [dbo].[CTSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTV] ON 

INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Thành vien cao cấp
', 14)
INSERT [dbo].[LoaiTV] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Thành viên thường
', NULL)
SET IDENTITY_INSERT [dbo].[LoaiTV] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (1, N'1', N'1', N'Nguyễn An Cơ', N'Q1', N'tranthuy.nute@gmail.com', N'982527982', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (2, N'2', N'2', N'Nguyễn An Khang', N'Q2', N'manhhachkt08@gmail.com', N'973776072', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (3, N'3', N'3', N'Nguyễn Ân Lai', N'Q3', N'tienlapspktnd@gmail.com', N'917749254', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (4, N'4', N'4', N'Nguyễn An Nam', N'Q4', N'nvt.isst.nute@gmail.com', N'904770053', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (5, N'5', N'5', N'Nguyễn An Nguyên', N'Q1', N'danghoang87hl@gmail.com', N'974880788', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (6, N'6', N'6', N'Lê Ðắc Cường', N'Q2', N'trungkienspktnd@gamail.com', N'983888611', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (7, N'7', N'7', N'Lê Ðắc Di', N'Q3', N'ckctm12@gmail.com', N'984603663', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (8, N'8', N'8', N'Lê Ðắc Lộ', N'Q4', N'thuhang.nute@gmail.com', N'986375176', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (9, N'9', N'9', N'Lê Ðắc Lực', N'Q1', N'vuhaithuongnute@gmail.com', N'914770545', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (10, N'10', N'10', N'Lê Ðắc Thái', N'Q2', N'binhan628@gmail.com', N'986253482', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (11, N'11', N'11', N'Lê Ðắc Thành', N'Q3', N'dongspktnd@gmail.com', N'944545232', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (12, N'12', N'12', N'Đào Hà Hải', N'Q4', N'anhbinhpham@yahoo.com', N'912644784', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (13, N'13', N'13', N'Đào Hải Bằng', N'Q1', N'dkdsctm7@gmail.com', N'368890843', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (14, N'14', N'14', N'Đào Hải Bình', N'Q2', N'v.thang2909@gmail.com', N'966219941', N'', 2)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (15, N'15', N'15', N'Đào Hải Ðăng', N'Q3', N'tendangnhap05@gmail.com', N'334229954', N'', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (18, N'tronnguyen', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron200901@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (19, N'tronnguyen', N'123456', N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron20091@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 1)
INSERT [dbo].[ThanhVien] ([MaTV], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SDT], [CauHoi], [MaLoaiTV]) VALUES (20, N'tronnguyen', N'e333', N'Nguyễn Quốc Trọn', N'fdfsf', N'quoctron2009@gmail.com', N'0987654321', N'Shop có đồ đẹp không', 1)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (1, N'Nguyễn An Cơ', N'Q1', N'tranthuy.nute@gmail.com', N'982527982', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (2, N'Hoàng Đức Anh', N'Quận2', N'manhhachkt08@gmail.com', N'973776072', 2)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (3, N'Lưu Trang Anh', N'Quận3', N'tienlapspktnd@gmail.com', N'917749254', 3)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (4, N'Phạm Hoàng Anh', N'Quận4', N'nvt.isst.nute@gmail.com', N'904770053', 4)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (5, N'Phạm Thị Hiền Anh', N'Quận5', N'danghoang87hl@gmail.com', N'974880788', 5)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (8, N'Trần Thị Minh Châu', N'Quận8', N'thuhang.nute@gmail.com', N'986375176', 7)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (9, N'Tăng Phương Chi', N'Quận9', N'vuhaithuongnute@gmail.com', N'914770545', 8)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (10, N'Gan Feng Du', N'Quận10', N'binhan628@gmail.com', N'986253482', 9)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (11, N'Phạm Tiến Dũng', N'Quận11', N'dongspktnd@gmail.com', N'944545232', 10)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (12, N'Nguyễn Thái Dương', N'Quận12', N'anhbinhpham@yahoo.com', N'912644784', 11)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (14, N'Mạc Trung Đức', N'Bình Dương', N'v.thang2909@gmail.com', N'966219941', 12)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (15, N'Vũ Hương Giang', N'Tân Phú', N'tendangnhap05@gmail.com', N'334229954', 13)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (16, N'Nguyễn Thị Ngân Hà', N'Thủ Đức', N'tendangnhap05@gmail.com', N'984603663', 14)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (19, N'Đào Hải Ðăng', N'Q3', N'mail Trọn', N'334229954', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (20, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron200901@gmail.com', N'0987654321', 18)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (21, N'Trọn đẹp trai', N'Nhà Trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (22, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (23, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (24, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (25, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (26, N'Trọn đẹp trai', N'trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (27, N'Trọn đẹp trai', N'nha trojn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (28, N'Trọn đẹp trai', N'nhaf trojn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (29, N'Trọn đẹp trai', N'nhaf tron', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (30, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (31, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (32, N'Trọn đẹp trai', N'nhà ', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (33, N'Trọn đẹp trai', N'jjj', N'quoctron2009@gmail.com', N'sđt trọn', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (34, N'Trọn đẹp trai', N'dđ', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (35, N'Trọn đẹp trai', N'nhafd trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (36, N'Trọn đẹp trai', N'rrrrr', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (37, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (38, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (39, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (40, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (41, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (42, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (43, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (44, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (45, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (46, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (47, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (48, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (49, N'Trọn đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (50, N'Trọn rất đẹp trai', N'nhà trọn', N'quoctron2009@gmail.com', N'0987654321', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (51, N'Nguyễn Quốc Trọn', N'nhà trọn', N'quoctron20091@gmail.com', N'0987654321', 19)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SDT], [MaTV]) VALUES (52, N'Nguyễn Quốc Trọn', N'fdfsf', N'quoctron2009@gmail.com', N'0987654321', 20)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1046, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-03-26T00:09:20.943' AS DateTime), CAST(N'2022-03-30T00:09:20.943' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1047, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-03-27T17:26:28.870' AS DateTime), CAST(N'2022-03-31T17:26:28.870' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1048, N'Đã giao', 1, 0, 0, NULL, 1, 21, CAST(N'2022-03-27T17:32:02.567' AS DateTime), CAST(N'2022-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1049, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-03-28T17:48:11.920' AS DateTime), CAST(N'2022-04-01T17:48:11.920' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1050, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-04-03T22:21:05.043' AS DateTime), CAST(N'2022-04-07T22:21:05.250' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1051, N'Đã giao', 1, 0, 0, NULL, 1, 20, CAST(N'2022-04-03T22:23:22.777' AS DateTime), CAST(N'2022-04-07T22:23:22.960' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1052, N'Chưa Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-03T23:14:05.363' AS DateTime), CAST(N'2022-04-07T23:14:05.363' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1053, N'Đang Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T11:05:10.140' AS DateTime), CAST(N'2022-04-10T11:07:06.213' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1054, N'Chưa Giao', 0, 0, 0, NULL, 1, 22, CAST(N'2022-04-06T00:30:37.920' AS DateTime), CAST(N'2022-04-10T00:31:16.250' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1055, N'Chưa Giao', 0, 0, 0, NULL, NULL, 23, CAST(N'2022-04-06T00:33:23.010' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1056, N'Chưa Giao', 0, 0, 0, NULL, NULL, 24, CAST(N'2022-04-06T00:36:26.203' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1057, N'Chưa Giao', 0, 0, 0, NULL, 1, 25, CAST(N'2022-04-06T00:38:20.490' AS DateTime), CAST(N'2022-04-10T00:38:41.533' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1058, N'Chưa Giao', 0, 0, 0, NULL, 1, 26, CAST(N'2022-04-06T00:47:07.577' AS DateTime), CAST(N'2022-04-10T00:47:25.817' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1059, N'Đang Giao', 0, 0, 0, NULL, 0, 1, CAST(N'2022-04-06T15:06:30.543' AS DateTime), CAST(N'2022-04-10T15:06:30.543' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1060, N'Chưa Giao', 0, 0, 0, NULL, NULL, 27, CAST(N'2022-04-06T15:10:33.070' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1061, N'Chưa Giao', 0, 0, 0, NULL, NULL, 28, CAST(N'2022-04-06T15:11:52.100' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1062, N'Chưa Giao', 0, 0, 0, NULL, 1, 29, CAST(N'2022-04-06T15:13:12.053' AS DateTime), CAST(N'2022-04-10T15:13:49.907' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1063, N'Đang Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T15:16:42.490' AS DateTime), CAST(N'2022-04-10T15:17:11.793' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1064, N'Đang Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T15:18:56.900' AS DateTime), CAST(N'2022-04-10T15:19:18.627' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1065, N'Đang Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T15:25:04.673' AS DateTime), CAST(N'2022-04-10T15:25:17.237' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1066, N'Đang Giao', 0, 0, 0, NULL, 1, 20, CAST(N'2022-04-06T15:39:47.560' AS DateTime), CAST(N'2022-04-10T15:39:57.910' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1067, N'Đang Giao', 0, 0, 0, NULL, 0, 20, CAST(N'2022-04-10T10:14:16.370' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1068, N'Đang Giao', 0, 0, 0, NULL, NULL, 30, CAST(N'2022-04-09T23:40:14.587' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1069, N'Đang Giao', 0, 0, 0, NULL, NULL, 31, CAST(N'2022-04-09T23:41:41.403' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1070, N'Đang Giao', 0, 0, 0, NULL, NULL, 32, CAST(N'2022-04-09T23:43:16.520' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1071, N'Đang Giao', 0, 0, 0, NULL, NULL, 33, CAST(N'2022-04-09T23:44:24.930' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1072, N'Đang Giao', 0, 0, 0, NULL, NULL, 34, CAST(N'2022-04-09T23:46:03.560' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1073, N'Đang Giao', 0, 0, 0, NULL, NULL, 35, CAST(N'2022-04-09T23:50:40.277' AS DateTime), CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1074, N'Đang Giao', 0, 0, 0, NULL, NULL, 36, CAST(N'2022-04-10T00:37:54.237' AS DateTime), CAST(N'2022-04-14T00:00:00.000' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1075, N'Đang Giao', 0, 0, 0, NULL, NULL, 37, CAST(N'2022-04-10T09:14:18.697' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1076, N'Đang Giao', 0, 0, 0, NULL, NULL, 38, CAST(N'2022-04-10T09:16:33.873' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1077, N'Đang Giao', 0, 0, 0, NULL, NULL, 39, CAST(N'2022-04-10T09:21:40.673' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1078, N'Đang Giao', 0, 0, 0, NULL, NULL, 40, CAST(N'2022-04-10T09:44:08.163' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1079, N'Đang Giao', 0, 0, 0, NULL, NULL, 41, CAST(N'2022-04-10T09:46:43.740' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1080, N'Đang Giao', 0, 0, 0, NULL, NULL, 42, CAST(N'2022-04-10T09:52:23.953' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1081, N'Đang Giao', 0, 0, 0, NULL, NULL, 43, CAST(N'2022-04-10T09:54:16.763' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1082, N'Đang Giao', 0, 0, 0, NULL, 1, 44, CAST(N'2022-04-10T09:59:27.670' AS DateTime), CAST(N'2022-04-14T10:00:01.730' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1083, N'Đang Giao', 0, 0, 0, NULL, NULL, 45, CAST(N'2022-04-10T10:02:35.190' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1084, N'Đang Giao', 0, 0, 0, NULL, NULL, 46, CAST(N'2022-04-10T10:05:41.403' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1085, N'Đang Giao', 0, 0, 0, NULL, NULL, 47, CAST(N'2022-04-10T10:07:38.473' AS DateTime), NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1086, N'Đang Giao', 0, 0, 0, NULL, 1, 48, CAST(N'2022-04-10T10:09:19.693' AS DateTime), CAST(N'2022-04-14T10:09:49.930' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1087, N'Đang Giao', 1, 0, 0, NULL, 1, 49, CAST(N'2022-04-10T10:11:11.573' AS DateTime), CAST(N'2022-04-14T10:11:41.087' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1088, N'Đang Giao', 1, 0, 0, NULL, 1, 50, CAST(N'2022-04-10T11:24:40.490' AS DateTime), CAST(N'2022-04-14T11:28:37.053' AS DateTime))
INSERT [dbo].[DonDatHang] ([MaDDH], [TinhTrangDDH], [DaThanhToan], [UuDai], [DaHuy], [DaXoa], [DaDat], [MaKH], [NgayDat], [NgayGiao]) VALUES (1089, NULL, NULL, NULL, NULL, NULL, 0, 51, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[CTDonDatHang] ON 

INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1043, 1046, N'Áo Thun Burbery', 1, 2000000.0000, 0, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1044, 1047, N'Áo Thun Burbery', 2, 2000000.0000, 1, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1045, 1048, N'Áo Thun Burbery', 1, 2000000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1046, 1049, N'Áo Khoát Nike', 1, 1500000.0000, 0, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1047, 1049, N'Áo Thun Burbery', 1, 2000000.0000, 1, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1048, 1050, N'Áo Nike', 2, 2250000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1049, 1050, N'Quần Burbery', 1, 3100000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1050, 1050, N'Quần Nike', 3, 3600000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1051, 1050, N'Áo Thun Adidas', 1, 1500000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1052, 1050, N'Quần Nike', 1, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1053, 1051, N'Áo Khoát Nike', 1, 1500000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1054, 1052, N'Quần Burbery', 2, 2790000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1055, 1053, N'Quần Nike', 2, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1056, 1054, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1057, 1055, N'Quần Nike', 1, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1058, 1056, N'Quần Nike', 1, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1059, 1057, N'Quần Nike', 1, 1800000.0000, NULL, NULL, NULL)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1060, 1058, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 36)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1061, 1053, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1062, 1059, N'Sơ mi trắng', 2, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1063, 1060, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1064, 1061, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1065, 1062, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1066, 1063, N'Sơ mi trắng', 1, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1067, 1064, N'Áo mới', 2, 16000.0000, 1, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1068, 1064, N'Áo Sơ Mi', 1, 16000.0000, 0, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1069, 1064, N'Áo Sơ Mi', 1, 16000.0000, 1, 23, 47)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1070, 1064, N'Quần Jean', 1, 300000.0000, 0, 22, 44)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1071, 1065, N'Sơ mi trắng', 2, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1072, 1066, N'Áo Thun Adidas', 1, 1200000.0000, 0, 10, 38)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1073, 1066, N'Áo Thun Adidas', 2, 1200000.0000, 0, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1074, 1066, N'Áo Sơ Mi', 97, 16000.0000, 0, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1075, 1067, N'Áo Sơ Mi', 3, 16000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1076, 1068, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1077, 1068, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1078, 1068, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 42)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1079, 1069, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1080, 1070, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1081, 1071, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1082, 1072, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1083, 1073, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1084, 1074, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1085, 1074, N'Áo mới', 2, 20000.0000, NULL, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1086, 1075, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1087, 1076, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1088, 1077, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1089, 1078, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1090, 1079, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1091, 1080, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1092, 1081, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 46)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1093, 1081, N'Áo Sơ Mi', 1, 20000.0000, NULL, 23, 47)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1094, 1082, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1095, 1082, N'Quần Adidas', 1, 1700000.0000, NULL, 14, 32)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1096, 1083, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1097, 1084, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1098, 1085, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1099, 1086, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1100, 1087, N'Sơ mi trắng', 1, 20000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1101, 1067, N'Quần Jean', 1, 240000.0000, NULL, 22, 44)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1102, 1067, N'Sơ mi trắng', 1, 16000.0000, NULL, 24, 40)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1103, 1067, N'Áo mới', 1, 16000.0000, NULL, 20, 43)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1104, 1088, N'Áo Thun Adidas', 1, 1500000.0000, NULL, 10, 41)
INSERT [dbo].[CTDonDatHang] ([MaCTDDH], [MaDDH], [TenSP], [SoLuong], [DonGia], [BinhChon], [MaSP], [MaCTSP]) VALUES (1105, 1089, N'Sơ mi trắng', 1, 16000.0000, NULL, 24, 40)
SET IDENTITY_INSERT [dbo].[CTDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaNV], [TenNV], [Email], [SDT], [TaiKhoan], [MatKhau]) VALUES (1, N'Chủ tịch Trọn', N'mail trọn', N'091231313', N'tronnguyen', N'123456')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Logo], [BiDanh]) VALUES (2, N'Áo Thun', N'/Content/images/AoThun.jpg', N'ÁO Thun')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Logo], [BiDanh]) VALUES (3, N'Áo Khoát', N'/Content/images/AoKhoac.jpg', N'Áo Khoát')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Logo], [BiDanh]) VALUES (4, N'Quần Thun', N'/Content/images/QuanThun.jpg', N'Quần Thun')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [Logo], [BiDanh]) VALUES (5, N'Quần Dài', N'/Content/images/QuanDai.jpg', N'Quần Dài')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSX] ON 

INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (1, N'Trần Đức Dương', N'', N'')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (2, N'Nguyễn Quốc Huy', N'', N'')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (3, N'Phạm Bảo Liên', N'', N'')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (4, N'Đinh Thùy Linh', N'', N'')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (5, N'Phạm Vũ Ngọc Diệp', N'', N'')
SET IDENTITY_INSERT [dbo].[NhaSX] OFF
GO
