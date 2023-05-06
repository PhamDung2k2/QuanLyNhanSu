﻿Create database DuLieuQuanLy
use DuLieuQuanLy

Create table PhongBan(
	IdPB int primary key not null,
	TenPhong nvarchar (50),
	SDT varchar (10),
);
Create table ChucVu (
	IdCV int primary key not null,
	TenCV nvarchar (20)
);

Create table NhanVien (
	IdNV int primary key not null,
	HoTen nvarchar (50),
	Email varchar (100),
	SDT varchar (10),
	GioiTinh nvarchar (3),
	NgaySinh date,
	QueQuan nvarchar (200),
	DanToc nvarchar (20),
	ChuyenNganh nvarchar (50),
	IdPB int,
	IdCV int,
	TrinhDoHV nvarchar (20),
	LuongCB float,
	CONSTRAINT fk_PhongBan foreign key (IdPB) references PhongBan (IdPB),
	CONSTRAINT fk_ChucVu foreign key (IdCV) references ChucVu (IdCV),
);
Create table ChamCong (
	NgayChamCong date,
	IdNV int,
	CONSTRAINT fk_NhanVienCC foreign key (IdNV) references NhanVien (IdNV), 
);
Create table HopDong (
	IdHD int primary key not null,
	IdNV int,
	LoaiHD nvarchar (100),
	TuNgay date,
	DenNgay date,
	CONSTRAINT fk_NhanVienHD foreign key (IdNV) references NhanVien (IdNV),
);
--==========Chức vụ==========
insert into ChucVu (IdCV,TenCV) values (3001,N'Trưởng phòng');
insert into ChucVu (IdCV,TenCV) values (3002,N'Kế toán');
insert into ChucVu (IdCV,TenCV) values (3003,N'Nhân viên chuyên môn');
insert into ChucVu (IdCV,TenCV) values (3004,N'Nhân viên hành chính');

--==========Phòng Ban==========
insert into PhongBan (IdPB,TenPhong,SDT) values (2001,N'Phòng nhân sự','19005288');
insert into PhongBan (IdPB,TenPhong,SDT) values (2002,N'Phòng tiếp thị','19005289');
insert into PhongBan (IdPB,TenPhong,SDT) values (2003,N'Phòng kỹ thuật','19005290');
insert into PhongBan (IdPB,TenPhong,SDT) values (2004,N'Phòng bán hàng','19005291');
insert into PhongBan (IdPB,TenPhong,SDT) values (2005,N'Phòng sản xuất','19005292');

--============Nhân Viên==========
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1001,N'Nguyễn Văn An','nguyenan1001@gmail.com','0988775511',N'Nam','2002-02-02',N'Hồ Chí Minh',N'Kinh',N'Công Nghệ Thông Tin',2002,3002,N'Đại học',8000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1002,N'Nguyễn Minh Phúc','nguyenminhphuc1002@gmail.com','0379752489',N'Nam','1999-06-03',N'Bình Định',N'Kinh',N'Quản trị kinh danh',2001,3001,N'Đại học',10000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1003,N'Trần Minh Dũng','tranminhdung1003@gmail.com','0915579872',N'Nam','1995-12-12',N'An Giang',N'Kinh',N'Công Nghệ Thông Tin',2001,3002,N'Đại học',8000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1004,N'Mai Chí Tùng','maichitung1004@gmail.com','0393246894',N'Nam','2002-07-14',N'Đồng Nai',N'Kinh',N'Kế toán',2002,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1005,N'Tạ Thị Kim Chi','tathikimchi1005@gmail.com','0125355578',N'Nữ','1997-06-26',N'Phú Yên',N'Kinh',N'Công Nghệ Thông Tin',2004,3002,N'Đại học',8000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1006,N'Lê Quang Nhựt','lequangnhut1006@gmail.com','0393784449',N'Nam','2000-02-27',N'Phú Thọ',N'Kinh',N'Công Nghệ Thông Tin',2001,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1007,N'Trần Ngọc Mỹ Hà','tranngocmyha1007@gmail.com','0385267315',N'Nữ','1995-04-12',N'Hà Nội',N'Kinh',N'Công Nghệ Thông Tin',2005,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1008,N'Lê Văn Đạt','levandat1008@gmail.com','0966254367',N'Nam','1996-04-30',N'Bình Thuận',N'Kinh',N'Công Nghệ Thông Tin',2002,3002,N'Đại học',8000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1009,N'Nguyễn Trần Nam Kha','nguyentrannamkha1009@gmail.com','0125589657',N'Nam','1998-11-20',N'Buôn Mê Thuột',N'Kinh',N'Quản trị kinh danh',2001,3001,N'Đại học',10000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1010,N'Nguyễn Cao An','nguyencaoan1010@gmail.com','0364589657',N'Nam','2002-04-04',N'Hồ Chí Minh',N'Tày',N'Kế toán',2002,3004,N'Đại học',5000000);

insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1011,N'Lê Thị Thanh Trúc','lethithanhtruc1011@gmail.com','0245569234',N'Nữ','1997-03-15',N'Đà Nẵng',N'Kinh',N'Công Nghệ Thông Tin',2004,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1012,N'Châu Nguyên Thảo Giang','chaunguyenthaogiang1012@gmail.com','0236547789',N'Nữ','2000-06-04',N'Quảng Nam',N'Kinh',N'Công Nghệ Thông Tin',2005,3002,N'Đại học',8000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1013,N'Trần Nhật Phương','trannhatphuong1013@gmail.com','0915569364',N'Nữ','1997-06-25',N'Huế',N'Kinh',N'Công Nghệ Thông Tin',2005,3004,N'Cao đẳng',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1014,N'La Chí Thành','lachithanh1014@gmail.com','0954436625',N'Nam','2001-01-30',N'Quảng Ngãi',N'Kinh',N'Quản trị kinh danh',2003,3001,N'Đại học',10000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1015,N'Nguyễn Ngọc Gia Tuấn','nguyenngocgiatuan1015@gmail.com','0125634578',N'Nam','1996-06-10',N'Đồng Nai',N'Kinh',N'Kế toán',2003,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1016,N'Hà Anh Quân','haanhquan1016@gmail.com','0978201175',N'Nam','2000-08-26',N'Gia Lai',N'Kinh',N'Công Nghệ Thông Tin',2004,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1017,N'Nguyễn Tống Phương Nhã','nguyentongphuongnha1017@gmail.com','0964789541',N'Nữ','1995-03-03',N'KonTum',N'Kinh',N'Công Nghệ Thông Tin',2001,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1018,N'Nguyễn Thuý Hường','nguyenthuyhuong1018@gmail.com','0254789254',N'Nữ','1998-02-01',N'Đồng Tháp',N'Kinh',N'Công Nghệ Thông Tin',2002,3004,N'Cao đẳng',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1019,N'Vũ Trà My','vutramy1019@gmail.com','0125695642',N'Nữ','1999-06-07',N'Cà Mau',N'Kinh',N'Công Nghệ Thông Tin',2005,3004,N'Cao đẳng',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1020,N'Đinh Gia Triệu','dinhgiatrieu1020@gmail.com','0978844689',N'Nam','1998-12-06',N'Phú Yên',N'Kinh',N'Công Nghệ Thông Tin',2003,3004,N'Đại học',5000000);

insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1021,N'Nguyễn Thị Hồng','nguyenthihong1021@gmail.com','0935428677',N'Nữ','1995-06-13',N'An Giang',N'Kinh',N'Quản trị kinh danh',2001,3001,N'Đại học',10000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1022,N'Huỳnh Thị Hồng Nhung','huynhthihongnhung1022@gmail.com','0935144284',N'Nữ','1998-07-23',N'Vũng Tàu',N'Kinh',N'Kế toán',2002,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1023,N'Nguyễn Đặng Duy','nguyedangduy1023@gmail.com','0374995469',N'Nam','2002-01-18',N'Bạc Liêu',N'Kinh',N'Công Nghệ Thông Tin',2005,3004,N'Cao đẳng',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1024,N'Lê Công Tín','lecongtin1024@gmail.com','0329425133',N'Nam','2001-10-16',N'Long An',N'Kinh',N'Công Nghệ Thông Tin',2003,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1025,N'Lê Thị Minh Dung','lethiminhdung1025@gmail.com','0849885977',N'Nữ','1999-11-11',N'Bắc Giang',N'Kinh',N'Quản trị kinh danh',2001,3001,N'Đại học',10000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1026,N'Nguyễn Hữu Lộc','nguyenhuuloc1026@gmail.com','0338474369',N'Nam','1997-04-20',N'Cà Mau',N'Kinh',N'Kế toán',2002,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1027,N'Nguyễn Hà Yến Nhi','nguyenhayenhi1027@gmail.com','0925977767',N'Nữ','2000-10-27',N'Cao Bằng',N'Kinh',N'Công Nghệ Thông Tin',2004,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1028,N'Huỳnh Nguyễn Uyên Nhi','huynhnguyenuyenhi1027@gmail.com','0824602713',N'Nữ','2002-10-13',N'Cần Thơ',N'Kinh',N'Công Nghệ Thông Tin',2005,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1029,N'Huỳnh Thị Ngọc Hà','huynhthingocha1029@gmail.com','0949028520',N'Nữ','1994-04-19',N'Đà Nẵng',N'Kinh',N'Công Nghệ Thông Tin',2001,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1030,N'Nguyễn Thị Tường Vy','nguyenthituongvy1030@gmail.com','0334345235',N'Nữ','2001-12-22',N'Bình Phước',N'Kinh',N'Công Nghệ Thông Tin',2003,3004,N'Đại học',5000000);

insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1031,N'Lê Thị Ngọc Anh','lehthingocanh1031@gmail.com','0363559510',N'Nữ','1998-03-05',N'Bình Thuận',N'Kinh',N'Công Nghệ Thông Tin',2002,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1032,N'Hứa Nguyễn Tấn Hoà','huanguyentanhoa1032@gmail.com','0357676149',N'Nam','1997-09-25',N'Điện Biên',N'Kinh',N'Công Nghệ Thông Tin',2004,3004,N'Cao đẳng',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1033,N'Nguyễn Tiến Hoàng','nguyentienhoang1033@gmail.com','0913786042',N'Nam','2002-07-19',N'Đồng Nai',N'Kinh',N'Công Nghệ Thông Tin',2002,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1034,N'Trần Minh Thư','tranminhthu1034@gmail.com','0832188767',N'Nữ','2000-05-02',N'Đồng Tháp',N'Kinh',N'Công Nghệ Thông Tin',2005,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1035,N'Lê Nguyễn Đăng Trường','lenguyendangtruong1035@gmail.com','0964782147',N'Nam','1996-08-12',N'Gia Lai',N'Kinh',N'Công Nghệ Thông Tin',2004,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1036,N'Trần Trương Giang','trantruonggiang1036@gmail.com','0888136064',N'Nam','1999-09-01',N'Hà Nam',N'Kinh',N'Công Nghệ Thông Tin',2004,3004,N'Cao đẳng',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1037,N'Võ Xuân Hạnh','voxuanhanh1037@gmail.com','0935014716',N'Nam','2002-06-01',N'Hải Dương',N'Kinh',N'Công Nghệ Thông Tin',2005,3004,N'Đại học',5000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1038,N'Huỳnh Bảo Hân','huynhbaohan1038@gmail.com','0836905286',N'Nữ','1998-06-26',N'Hải Phòng',N'Kinh',N'Công Nghệ Thông Tin',2005,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1039,N'Nguyễn Thị Ái Hoa','nguyenthiaihoa1039@gmail.com','0837785466',N'Nữ','1997-07-03',N'Hồ Chí Minh',N'Kinh',N'Công Nghệ Thông Tin',2002,3003,N'Đại học',6000000);
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,LuongCB) values (1040,N'Trương Nguyễn Ngọc Huệ','truongnguyenngochue1040@gmail.com','0865293679',N'Nữ','2001-10-20',N'Hoà Bình',N'Kinh',N'Công Nghệ Thông Tin',2001,3004,N'Cao đẳng',5000000);


--==========Hợp đồng==========
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4001,1001,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4002,1002,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4003,1003,N'Có thời hạn 12 tháng','2022-03-28','2023-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4004,1004,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4005,1005,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4006,1006,N'Có thời hạn 12 tháng','2022-03-28','2023-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4007,1007,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4008,1008,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4009,1009,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4010,1010,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4011,1011,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4012,1012,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4013,1013,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4014,1014,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4015,1015,N'Có thời hạn 24 tháng','2022-03-28','2024-03-28');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4016,1016,N'Có thời hạn 12 tháng','2022-05-25','2023-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4017,1017,N'Có thời hạn 12 tháng','2022-05-25','2023-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4018,1018,N'Có thời hạn 12 tháng','2022-05-25','2023-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4019,1019,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4020,1020,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4021,1021,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4022,1022,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4023,1023,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4024,1024,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4025,1025,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4026,1026,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4027,1027,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4028,1028,N'Có thời hạn 24 tháng','2022-05-25','2024-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4029,1029,N'Có thời hạn 12 tháng','2022-05-25','2023-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4030,1030,N'Có thời hạn 12 tháng','2022-05-25','2023-05-25');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4031,1031,N'Có thời hạn 12 tháng','2022-08-08','2023-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4032,1032,N'Có thời hạn 12 tháng','2022-08-08','2023-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4033,1033,N'Có thời hạn 24 tháng','2022-08-08','2024-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4034,1034,N'Có thời hạn 24 tháng','2022-08-08','2024-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4035,1035,N'Có thời hạn 24 tháng','2022-08-08','2024-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4036,1036,N'Có thời hạn 12 tháng','2022-08-08','2023-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4037,1037,N'Có thời hạn 24 tháng','2022-08-08','2024-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4038,1038,N'Có thời hạn 24 tháng','2022-08-08','2024-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4039,1039,N'Có thời hạn 12 tháng','2022-08-08','2023-08-08');
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4040,1040,N'Có thời hạn 12 tháng','2022-08-08','2023-08-08');

--==========chấm công===========
insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-01');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-01');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-02');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-02');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-03');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-03');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-04');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-04');



insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-06');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-06');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-07');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-07');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-08');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-08');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-09');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-09');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-10');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-10');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-11');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-11');

insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-12');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-12');



insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-13');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-13');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-14');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-14');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-15');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-15');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-16');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-16');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-17');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-17');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-18');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-18');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-20');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-20');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-21');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-21');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-22');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-22');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-23');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-23');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-24');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-24');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-25');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-25');

insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-26');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-26');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1005,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-27');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-27');


insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1002,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1003,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1004,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1006,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1007,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1008,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1009,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1010,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1011,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1012,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1013,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1014,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1015,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1016,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1017,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1018,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1019,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1020,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1021,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1022,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1023,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1024,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1025,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1026,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1027,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1028,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1029,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1030,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1031,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1032,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1033,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1034,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1035,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1036,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1037,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1038,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1039,'2023-02-28');
insert into ChamCong (IdNV,NgayChamCong) values (1040,'2023-02-28');




/*
drop table HopDong
drop table ChamCong
drop table NhanVien
drop table PhongBan
drop table ChucVu


create trigger Tr_ThangCong on ChamCong
for insert
as	
	begin
		declare @IdNV int,@NgayChamCong date
		select @IdNV = i.IdNV , @NgayChamCong = i.NgayChamCong from inserted i
		begin
		update ChamCong
		set ThangCong = (SELECT MONTH(NgayChamCong) FROm inserted  )
		where IdNV = @IdNV and NgayChamCong = @NgayChamCong
		end
	end

create trigger Tr_NgayCong on ChamCong
after insert
as	
	begin
		declare @IdNV int,@ThangCong int
		select @IdNV = i.IdNV ,@ThangCong = c.ThangCong from inserted i , ChamCong c where c.IdNV = i.IdNV
		begin
		update NhanVien
		SELECT NgayCong COUNT(*) FROM ChamCong GROUP BY MONTH(NgayChamCong)
		where IdNV = @IdNV 
		end
	end


insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,HeSoLuong,LuongCB) values (1001,N'Nguyễn Văn A','nguyena1001@gmail.com','0988775511',N'Nam','02-02-2002',N'Thành Phố Hồ Chí Minh',N'Kinh',N'Công Nghệ Thông Tin',2001,3001,N'Đại Học',2000000,2);


insert into ChucVu (IdCV,TenCV) values (3001,N'Quản Lý');
insert into PhongBan (IdPB,TenPhong,SDT) values (2001,N'Kế Toán','0998856421');
insert into NhanVien (IdNV,HoTen,Email,SDT,GioiTinh,NgaySinh,QueQuan,DanToc,ChuyenNganh,IdPB,IdCV,TrinhDoHV,HeSoLuong,LuongCB) values (1001,N'Nguyễn Văn A','nguyena1001@gmail.com','0988775511',N'Nam','2002-02-02',N'Hồ Chí Minh',N'Kinh',N'Công Nghệ Thông Tin',2001,3001,N'Đại học',2,10000000);
insert into HopDong (IdHD,IdNV,LoaiHD,TuNgay,DenNgay) values (4001,1001,N'1 Năm','05-03-2010','05-03-2011');
insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-03-03');
insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-03-02');
insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-03-04');
insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-03-05');
insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-04-02');
insert into ChamCong (IdNV,NgayChamCong) values (1001,'2023-04-05');


delete from ChamCong
drop trigger Tr_ThangCong
drop trigger Tr_NgayCong

select COUNT(DAY(NgayChamCong)) from ChamCong where MONTH(NgayChamCong) != 02 group by IdNV

select * from ChamCong
Select * from NhanVien

SELECT IdNV ,(MONTH(NgayChamCong)) AS month, COUNT(*) AS numberday

FROm ChamCong

GROUP BY MONTH(NgayChamCong),IdNV

ORDER BY MONTH(NgayChamCong) ASC

SELECT COUNT(*) AS numberday FROM ChamCong GROUP BY MONTH(NgayChamCong)

SELECT MONTH(NgayChamCong) FROm ChamCong GROUP BY MONTH(NgayChamCong)*/

-- PROC TÍNH SỐ NGÀY CÔNG TỪ MÃ NHÂN VIÊN VÀ THÁNG LÀM CỦA NHÂN VIÊN ĐƯỢC NHẬP TỪ BÀN PHÍM
create proc sp_TongNgayCong(
		@IdNV int,
		@ThangCong int
)
as
SELECT COUNT(*) AS NgayCong FROM ChamCong where MONTH(NgayChamCong)= @ThangCong and IdNV = @IdNV GROUP BY MONTH(NgayChamCong)


DROP PROC sp_TongNgayCong


-- PROC TÍNH LƯƠNG CỦA NHÂN VIÊN 
create proc sp_TinhLuong (
	@IdNV int ,
	@ThangCong int
)
as
begin 
	declare @Luong float ,@NgayCong int
	set @NgayCong = (SELECT COUNT(*) AS NgayCong FROM ChamCong where MONTH(NgayChamCong)= @ThangCong and IdNV = @IdNV GROUP BY MONTH(NgayChamCong))
	set @Luong = (select LuongCB/26 from NhanVien where IdNV = @IdNV) * @NgayCong
	select Round(@Luong,3) as TongLuong
end

drop proc sp_TinhLuong

sp_TongNgayCong 1038,2
sp_TinhLuong 1038,2
	

