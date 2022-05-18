
create database QLHTChamCong
drop database QLHTChamCong

create table PhongBan(
    MaPhongBan char(10) primary key,
    TenPhongBan char(50) not null,
    SoNhanVien INT not null
)
insert into PhongBan
VALUES
('PB01','NOS1',5),
('PB02','NOS2',5),
('PB03','NOS3',5),
('PB04','NOS4',5),
('PB05','NOS5',10)

create table Nhanvien
(
    MaNV char(10) ,
    MaPhongBan char(10),
    HoTen nvarchar(30) not null,
    GioiTinh nvarchar(5),
    NgaySinh date,
    DiaChi nvarchar(30),
    Email nvarchar(50) unique check (Email like '%@%'),
    SDT char(10),
    ChucVu nvarchar(100),
    primary key (MaNV),
    FOREIGN key (MaPhongBan) REFERENCES PhongBan(MaPhongBan)
)


insert into Nhanvien
VALUES
('NV01','PB01',N'Nguyễn Công Bính',N'Nam','1998-03-02',N'Hà Nội',N'binh123@gmail.com','0367231400',N'Quản lí'),
('NV02','PB01',N'Phạm Thị Huyền',N'Nữ','2001-03-12',N'Nam Định',N'huyen2611@gmail.com','0362301402',N'Nhân viên'),
('NV03','PB01',N'Đinh Thị Bình',N'Nữ','1998-12-29',N'Hà Nội',N'binhthi23@gmail.com','0367502330',N'Nhân viên'),
('NV04','PB01',N'Mai Văn Đức',N'Nam','1989-12-07',N'Thanh Hoá',N'ducmaivan@gmail.com','0978236789',N'Nhân viên'),
('NV05','PB01',N'Nguyễn Thị Linh Chi',N'Nữ','1995-12-20',N'Thái Bình',N'linhchi@gmail.com','0236755188',N'Nhân viên'),
('NV06','PB02',N'Phạm Thị Lan',N'Nữ','1988-03-12',N'Nam Định',N'lan232@gmail.com','0368501407',N'Quản lí'),
('NV07','PB02',N'Đăng Mai Lĩnh',N'Nam','1994-03-07',N'Hà Nam',N'linhnamdang12@gmail.com','0943275078',N'Nhân viên'),
('NV08','PB02',N'Đinh Thị Phương Anh',N'Nữ','1998-02-28',N'Hà Nội',N'phuongAnh@gmail.com','0367501230',N'Nhân viên'),
('NV09','PB02',N'Hoàng Văn Đức',N'Nam','1989-01-07',N'Thanh Hoá',N'ducvan12@gmail.com','0978723789',N'Nhân viên'),
('NV010','PB02',N'Nguyễn Linh Chi',N'Nữ','1995-12-20',N'Thái Bình',N'linhchi12@gmail.com','0936755188',N'Nhân viên'),
('NV011','PB03',N'Phạm Thị Mai',N'Nữ','2000-03-12',N'Nam Định',N'maithi@gmail.com','0368501472',N'Quản lí'),
('NV012','PB03',N'Nguyễn Lan Hương',N'Nữ','1996-03-12',N'Hà Nội',N'huongnguyen@gmail.com','0967501400',N'Nhân viên'),
('NV013','PB03',N'Mai Thị Bình',N'Nữ','1999-12-29',N'Hà Nội',N'binhthimai23@gmail.com','0367801230','Nhân viên'),
('NV014','PB03',N'Mai Văn Quang',N'Nam','1980-12-07',N'Thanh Hoá',N'quangmai@gmail.com','0978123789',N'Nhân viên'),
('NV015','PB03',N'Nguyễn Thị Loan',N'Nữ','1995-11-20',N'Thái Bình',N'loannguyen293@gmail.com','0838755188',N'Nhân viên'),
('NV016','PB04',N'Nguyễn Thị Hoa',N'Nữ','2000-01-12',N'Nam Định',N'hoanguyen@gmail.com','0368501402',N'Quản lí'),
('NV017','PB04',N'Đăng Quang Tuấn',N'Nam','1994-09-07',N'Hà Nam',N'quangtuan@gmail.com','0943285078',N'Nhân viên'),
('NV018','PB04',N'Đinh Thị Cúc',N'Nữ','1998-12-09',N'Hà Nội',N'cucdinh@gmail.com','0367506237',N'Nhân viên'),
('NV019','PB04',N'Nguyễn Văn Đức',N'Nam','1989-02-07',N'Thanh Hoá',N'nguyenduc@gmail.com','0978723789',N'Nhân viên'),
('NV020','PB04',N'Hà Linh Chi',N'Nữ','1995-12-21',N'Thái Bình',N'linhchiha@gmail.com','0336775188',N'Nhân viên'),
('NV021','PB05',N'Phạm Thị Quế',N'Nữ','2001-03-16',N'Nam Định',N'quequadi@gmail.com','0368591402',N'Quản lí'),
('NV022','PB05',N'Nguyễn Quang Hoàng',N'Nam','1988-03-02',N'Hà Nội',N'quanghoang12@gmail.com','0387501400',N'Nhân viên'),
('NV023','PB05',N'Đinh Thị Châu',N'Nữ','1998-12-19',N'Hà Nội',N'emlachaubau12@gmail.com','0367401230',N'Nhân viên'),
('NV024','PB05',N'Hà Văn Đức',N'Nam','1999-12-07',N'Thanh Hoá',N'haduc12345@gmail.com','0978193789',N'Nhân viên'),
('NV025','PB05',N'Ngô Thị Linh Chi',N'Nữ','1999-12-20',N'Thái Bình',N'linhchingo@gmail.com','0856755188',N'Nhân viên'),
('NV026','PB05',N'Đặng Hồng Phong',N'Nam','1984-03-07',N'Hà Nam',N'phonggiangho@gmail.com','0903275078',N'Nhân viên'),
('NV027','PB05',N'Cẩm Tú Cầu',N'Nữ','2001-03-22',N'Nam Định',N'camtucau@gmail.com','0367501402',N'Nhân viên'),
('NV028','PB05',N'Nguyễn Thúy Kiều',N'Nữ','1998-02-09',N'Hà Nội',N'kieunguyen@gmail.com','0367581230',N'Nhân viên'),
('NV029','PB05',N'Mai Thúy Vân',N'Nữ','1989-12-17',N'Thanh Hoá',N'thuyvanni@gmail.com','0975123789',N'Nhân viên'),
('NV030','PB05',N'Ngô Danh Dự',N'Nam','1995-10-20',N'Thái Bình',N'danhduqua@gmail.com','0835755188',N'Nhân viên');

create table TaiKhoan
(
    MaNV char(10) primary key,
    MatKhau char(200) not NULL,
    FOREIGN key (MaNV) REFERENCES Nhanvien(MaNV)
)

insert into TaiKhoan
VALUES
('NV01','12345678'),
('NV02','12345678'),
('NV03','12345678'),
('NV04','12345678'),
('NV05','12345678'),
('NV06','12345678'),
('NV07', '12345678'),
('NV08', '12345678'),
('NV09', '12345678'),
('NV010','12345678'),
('NV011','12345678'),
('NV012','12345678'),
('NV013','12345678'),
('NV014','12345678'),
('NV015','12345678'),
('NV016','12345678'),
('NV017','12345678'),
('NV018','12345678'),
('NV019','12345678'),
('NV020','12345678'),
('NV021','12345678'),
('NV022','12345678'),
('NV023','12345678'),
('NV024','12345678'),
('NV025','12345678'),
('NV026','12345678'),
('NV027','12345678'),
('NV028','12345678'),
('NV029','12345678'),
('NV030','12345678')

create table CheckIn(
MaNV char(10) ,
NgayCheckin date,
ThoiGianCheckIn time,
primary key (MaNV,NgayCheckin),
FOREIGN key (MaNV) REFERENCES Nhanvien(MaNV)
)

insert into CheckIn
VALUES
('NV01','2021-10-10','9:00:00'),
('NV02','2021-10-10','9:00:00'),
('NV03','2021-10-10','9:00:00'),
('NV04','2021-10-10','9:00:00'),
('NV05','2021-10-10','9:00:00'),
('NV06','2021-10-10','9:00:00'),
('NV07','2021-10-10','9:00:00'),
('NV08','2021-10-10','9:00:00'),
('NV09','2021-10-10','9:00:00'),
('NV010','2021-10-10','9:00:00'),

('NV01','2021-10-11','9:00:00'),
('NV02','2021-10-11','9:00:00'),
('NV03','2021-10-11','9:00:00'),
('NV04','2021-10-11','9:00:00'),
('NV05','2021-10-11','9:00:00'),
('NV06','2021-10-11','9:00:00'),
('NV07','2021-10-11','9:00:00'),
('NV08','2021-10-11','9:00:00'),
('NV09','2021-10-11','9:00:00'),
('NV010','2021-10-11','9:00:00'),

('NV01','2021-10-12','9:00:00'),
--('NV02','2021-10-12','9:00:00'),
('NV03','2021-10-12','9:00:00'),
('NV04','2021-10-12','9:00:00'),
('NV05','2021-10-12','9:00:00'),
('NV06','2021-10-12','9:00:00'),
('NV07','2021-10-12','9:00:00'),
('NV08','2021-10-12','9:00:00'),
('NV09','2021-10-12','9:00:00'),
('NV010','2021-10-12','9:00:00'),

('NV01','2021-10-13','9:00:00'),
('NV02','2021-10-13','9:00:00'),
('NV03','2021-10-13','9:00:00'),
--('NV04','2021-10-13','9:00:00'),
('NV05','2021-10-13','9:00:00'),
('NV06','2021-10-13','9:00:00'),
('NV07','2021-10-13','9:00:00'),
('NV08','2021-10-13','9:00:00'),
('NV09','2021-10-13','9:00:00'),
('NV010','2021-10-13','9:00:00'),

('NV01','2021-10-14','9:00:00'),
('NV02','2021-10-14','9:00:00'),
('NV03','2021-10-14','9:00:00'),
--('NV04','2021-10-14','9:00:00'),
('NV05','2021-10-14','9:00:00'),
('NV06','2021-10-14','9:00:00'),
('NV07','2021-10-14','9:00:00'),
('NV08','2021-10-14','9:00:00'),
('NV09','2021-10-14','9:00:00')
--('NV010','2021-10-14','9:00:)00'

insert into CheckIn
VALUES
('NV01','2021-11-10','9:00:00'),
('NV02','2021-11-10','9:00:00'),
('NV03','2021-11-10','9:00:00'),
('NV04','2021-11-10','9:00:00'),
('NV05','2021-11-10','9:00:00'),
('NV06','2021-11-10','9:00:00'),
('NV07','2021-11-10','9:00:00'),
('NV08','2021-11-10','9:00:00'),
('NV09','2021-11-10','9:00:00'),
('NV010','2021-11-10','9:00:00'),

('NV01','2021-11-11','9:00:00'),
('NV02','2021-11-11','9:00:00'),
('NV03','2021-11-11','9:00:00'),
('NV04','2021-11-11','9:00:00'),
('NV05','2021-11-11','9:00:00'),
('NV06','2021-11-11','9:00:00'),
('NV07','2021-11-11','9:00:00'),
('NV08','2021-11-11','9:00:00'),
('NV09','2021-11-11','9:00:00'),
('NV010','2021-11-11','9:00:00')

create table CheckOut(
MaNV char(10) ,
NgayCheckout date,
ThoiGianCheckout time,
primary key (MaNV,NgayCheckout),
FOREIGN key (MaNV) REFERENCES Nhanvien(MaNV)
)

insert into CheckOut
VALUES
('NV01','2021-10-10','17:00:00'),
('NV02','2021-10-10','17:00:00'),
('NV03','2021-10-10','17:00:00'),
('NV04','2021-10-10','17:00:00'),
('NV05','2021-10-10','17:00:00'),
('NV06','2021-10-10','17:00:00'),
('NV07','2021-10-10','17:00:00'),
('NV08','2021-10-10','17:00:00'),
('NV09','2021-10-10','17:00:00'),
('NV010','2021-10-10','17:00:00'),

('NV01','2021-10-11','17:00:00'),
('NV02','2021-10-11','17:00:00'),
('NV03','2021-10-11','17:00:00'),
('NV04','2021-10-11','17:00:00'),
('NV05','2021-10-11','17:00:00'),
('NV06','2021-10-11','17:00:00'),
('NV07','2021-10-11','17:00:00'),
('NV08','2021-10-11','17:00:00'),
('NV09','2021-10-11','17:00:00'),
('NV010','2021-10-11','17:00:00'),

('NV01','2021-10-12','17:00:00'),
--('NV02','2021-10-12','17:00:00'),
('NV03','2021-10-12','17:00:00'),
('NV04','2021-10-12','17:00:00'),
('NV05','2021-10-12','17:00:00'),
('NV06','2021-10-12','17:00:00'),
('NV07','2021-10-12','17:00:00'),
('NV08','2021-10-12','17:00:00'),
('NV09','2021-10-12','17:00:00'),
('NV010','2021-10-12','17:00:00'),

('NV01','2021-10-13','17:00:00'),
('NV02','2021-10-13','17:00:00'),
('NV03','2021-10-13','17:00:00'),
--('NV04','2021-10-13','17:00:00'),
('NV05','2021-10-13','17:00:00'),
('NV06','2021-10-13','17:00:00'),
('NV07','2021-10-13','17:00:00'),
('NV08','2021-10-13','17:00:00'),
('NV09','2021-10-13','17:00:00'),
('NV010','2021-10-13','17:00:00'),

('NV01','2021-10-14','17:00:00'),
('NV02','2021-10-14','17:00:00'),
('NV03','2021-10-14','17:00:00'),
--('NV04','2021-10-14','17:00:00'),
('NV05','2021-10-14','17:00:00'),
('NV06','2021-10-14','17:00:00'),
('NV07','2021-10-14','17:00:00'),
('NV08','2021-10-14','17:00:00'),
('NV09','2021-10-14','17:00:00')
--('NV010','2021-10-14','17:00:00'),

insert into Checkout
VALUES
('NV01','2021-11-10','17:00:00'),
('NV02','2021-11-10','17:00:00'),
('NV03','2021-11-10','17:00:00'),
('NV04','2021-11-10','17:00:00'),
('NV05','2021-11-10','17:00:00'),
('NV06','2021-11-10','17:00:00'),
('NV07','2021-11-10','17:00:00'),
('NV08','2021-11-10','17:00:00'),
('NV09','2021-11-10','17:00:00'),
('NV010','2021-11-10','17:00:00'),

('NV01','2021-11-11','17:00:00'),
('NV02','2021-11-11','17:00:00'),
('NV03','2021-11-11','17:00:00'),
('NV04','2021-11-11','17:00:00'),
('NV05','2021-11-11','17:00:00'),
('NV06','2021-11-11','17:00:00'),
('NV07','2021-11-11','17:00:00'),
('NV08','2021-11-11','17:00:00'),
('NV09','2021-11-11','17:00:00'),
('NV010','2021-11-11','17:00:00')


create table DuAn
(
    MaDuAn  char(10) primary key,
    TenDuAn  nvarchar(500),
	TienDo nvarchar(200),
	NgayNhan date,
	HanBanGiao date,
	
)
insert into DuAn
values
('DA01',N'Chạy quảng cáo cho xe honda',N'Mới nhận','2021-10-8','2021-11-14'),
('DA02',N'Thiết kế phần mềm cho quán bán quần áo',N'Chuẩn bị bàn giao','2021-10-9','2021-11-14'),
('DA03',N'Thiết kế phần mềm cho quán bán bán mỹ phẩm',N'Thiết kế hệ thống ','2021-10-9','2021-11-14'),
('DA04',N'Thiết kế phần mềm quản lý thư viện',N'Kiểm thử phần mềm','2021-10-14','2021-11-7'),
('DA05',N'Thiết kế phần mềm nhận diện khuôn mặt',N'Xây dựng database','2021-10-14','2021-11-8')

create table Nhiemvu (
MaNV char(10) ,
MaDuAn char(10),
Ngay date not null,
TrangThai nvarchar(200) not null,
NhiemVuCV nvarchar(1000),
primary key(MaNV,Ngay),
FOREIGN key (MaNV) REFERENCES Nhanvien(MaNV),
FOREIGN key (MaDuAn) REFERENCES DuAn(MaDuAn)
)

insert into Nhiemvu
VALUES
('NV01','DA01','2021-10-10',N'Đã làm',N'backend'),
('NV02','DA01','2021-10-10',N'Chưa làm',N'fontend'),
('NV03','DA01','2021-10-10',N'Đã làm',N'interface'),
('NV04','DA01','2021-10-10',N'Đã làm',N'database'),
('NV05','DA01','2021-10-10',N'Chưa làm',N'system design'),
('NV01','DA05','2021-11-11',N'Đã làm',N'backend'),
('NV02','DA05','2021-11-11',N'Chưa làm',N'interface'),
('NV03','DA05','2021-11-11',N'Đã làm',N'fontend'),
('NV04','DA05','2021-11-11',N'Đã làm',N'system design'),
('NV05','DA05','2021-11-11',N'Chưa làm',N'database'),
('NV06','DA02','2021-12-12',N'Đã làm',N'database'),
('NV07','DA02','2021-12-12',N'Chưa làm',N'backend'),
('NV08','DA02','2021-12-12',N'Đã làm',N'system design'),
('NV09','DA02','2021-12-12',N'Đã làm',N'fontend'),
('NV010','DA02','2021-12-12',N'Chưa làm',N'interface'),
('NV011','DA03','2021-01-01',N'Đã làm',N'fontend'),
('NV012','DA03','2021-01-10',N'Chưa làm',N'interface'),
('NV013','DA03','2021-01-02',N'Đã làm',N'database'),
('NV014','DA03','2021-01-03',N'Đã làm',N'system design'),
('NV015','DA03','2021-01-09',N'Chưa làm',N'backend'),
('NV016','DA04','2021-03-09',N'Đã làm',N'system design'),
('NV017','DA04','2021-03-11',N'Chưa làm',N'fontend'),
('NV018','DA04','2021-03-12',N'Đã làm',N'backend'),
('NV019','DA04','2021-03-09',N'Đã làm',N'database'),
('NV020','DA04','2021-03-08',N'Chưa làm',N'interface')



create table Luong
(
    MaNV char(10),
	Thang date,
	LuongMotNgay  float,
    SoNgayLam float,
    Thue float,
    TongLuong float,
	primary key (MaNV,Thang),
    FOREIGN key (MaNV) REFERENCES Nhanvien(MaNV)
)


insert into Luong(MaNV,Thang,SoNgayLam,Thue,LuongMotNgay)
VALUES
('NV01','2021-10-30',null,0.02,400000),
('NV02','2021-10-30',null,0.02,350000),
('NV03','2021-10-30',null,0.03,300000),
('NV04','2021-10-30',null,0.01,270000),
('NV01','2021-11-30',null,0.02,350000),
('NV02','2021-11-30',null,0.02,290000),
('NV03','2021-11-30',null,0.03,250000),
('NV04','2021-11-30',null,0.01,300000),
('NV01','2021-12-30',null,0.02,350000),
('NV02','2021-12-30',null,0.02,290000),
('NV03','2021-12-30',null,0.03,250000),
('NV04','2021-12-30',null,0.01,300000),
('NV05','2021-12-30',null,0.02,370000),
('NV06','2021-12-30',null,0.02,290000),
('NV07','2021-12-30',null,0.03,230000),
('NV08','2021-12-30',null,0.01,380000)


select * from PhongBan
select * from Nhanvien
select * from Luong
Select * from GiaoViec
select * from CheckIn
select * from CheckOut
select * from TaiKhoan


--Viết thủ tục đưa ra danh sách nhân viên  của 1 phòng ban bất kì
create  PROC _PROC_2
@MaPB CHAR(10)
AS BEGIN
IF(EXISTS (SELECT * FROM Nhanvien WHERE MaPhongBan = @MaPB )) 
    select MaNV,HoTen,Gioitinh,Ngaysinh,Diachi,Email,SDT,Chucvu from PhongBan,Nhanvien
    where Phongban.MaPhongBan=Nhanvien.MaPhongBan
    and 	phongban.MaPhongBan = @MaPB 
END

EXEC _PROC_2 'PB01';
--Viết trigger khi thêm nhân viên vào bảng nhân viên thì mỗi phòng ban không được vượt quá 10 người đồng thời
--cập nhật bảng nhiệm vụ của nhân viên với mã dự án null,ngày nhận dự án là ngày thêm nhân viên, trạng thái làm việc :Chưa có việc được giao,  nhiệm vụ :null 
--Bảng tài khoản với tên đăng nhập là manv,mật khẩu mặc định 12345678
--Bảng lương với tháng nhập vào là ngày hôm nay ,các giá trị đều là null
alter trigger trigger_vd6
on nhanvien
for insert
as 
declare @sum int;
set @sum= (select count(manv) from nhanvien 
where maphongban=(select maphongban from inserted))
if (@sum>=10)
begin
 rollback tran ;
 print N'phòng ban đã đủ người';
end
ELSE
begin
print N'Thêm nhân viên vào phòng ban thành công'

declare @ngay date,@Manv char(10); 
 set @Manv=(select manv from inserted)
 set @ngay=(select getdate());

insert into NhiemVu(manv,ngay,trangthai)
values(@manv,@ngay,N'chưa có việc được giao')

insert into Taikhoan(manv,matkhau)
values(@manv,'12345678')

insert into Luong(manv,thang)
values (@manv,@ngay)
end

insert into Nhanvien values
('NV49','PB01',N'Đậu Đình Nguyên',N'Nam','1995-10-20',N'Thái Bình',N'khampham123@gmail.com','0855755199',N'Nhân viên')

insert into Nhanvien values
('NV047','PB03',N'Nguyễn Thị Loan',N'Nữ','1995-10-20',N'Nam Định',N'loannguyen@gmail.com','0362177888',N'Nhân viên')
select * from nhanvien where maphongban='PB03'
select * from Nhiemvu where MaNV = 'NV047'
select * from taikhoan where MaNV ='NV047'
select * from luong where  MaNV ='NV047'

--Tạo view v_bangcong để hiển thị thông tin của nhân viên bao gồm mã nhân viên, ngày làm,thời gian checkin, thời gian checkout

alter view v_bangcong(manhanvien,Ngay,timecheckin,timecheckout)
as 
 select  checkin.manv,NgayCheckin ,thoigiancheckin,thoigiancheckout
 from checkin,checkout
 where checkin.manv=checkout.manv 
 and NgayCheckin=NgayCheckout
 select * from v_bangcong

 --Viết hàm trả về thời gian checkin, checkout trong cùng 1 ngày của  nhân viên khi nhập mã nhân viên, tháng

create function f_danhsach(@manv char(10),@month int)
returns @bien table (MaNV char(10),Ngay date, thoigianCheckin time,thoigiancheckout time)
as 
begin
	insert into @bien
	select manhanvien,Ngay,timecheckin,timecheckout
	from v_bangcong
	where manhanvien = @MaNV
    and month(ngay)=@month
	return 
end
select * from f_danhsach('NV01',10)


--bình Viết hàm trả về số ngày làm của nhân viên khi nhập mã nhân viên và tháng
create Function f_NgayLamcuaThang(@manv char(10), @thang int,@nam int)
returns @bien table (songaylam int)
As begin
    insert into @bien
	Select Count(NgayCheckIn)  from CheckIn
	where  Month(NgayCheckIn) = @thang  and MaNV=@manv
    and year(NgayCheckIn)=@nam
	Return 
End
Select * from f_NgayLamcuaThang('NV01',10,2021)
drop function f_NgayLamcuaThang

--Bình Viết trigger khi nhân viên đó checkin thì cập nhật tiền lương
create trigger Bangluong on CheckIn For Insert
As
	Declare @manv as char(10), @ngay as date,@thoigian
	Set @manv = (Select MaNV From inserted)
	Set @ngay = (Select NgayCheckIn From inserted)
    set @thoigian=(select thoigiancheckin from inserted)
	Update Luong Set SoNgayLam = (Select dbo.f_NgayLamcuaThang(@manv,@thang)) Where MaNV=@manv and month(Thang)=@thang
	Update Luong Set TongLuong=SoNgayLam*LuongMotNgay*(1-Thue) Where MaNV=@manv and month(Thang)=@thang

select * from luong
Insert into CheckIn
Values
('NV01','2021-10-09','9:00:00')
('NV01','2021-10-19','9:00:00')

--Viết hàm trả về tổng  số giờ của nhân viên khi nhập mã nhân viên,tháng,năm

create function f_tonggio(@manv char(10),@month int,@year int)
returns @bien table (MaNV char(10),Thang int,Nam int ,sogiolam int)
as begin
	insert into @bien
	select manhanvien,month(Ngay),year(Ngay),sum(datediff(hour,timecheckin,timecheckout))
	from v_bangcong
	where manhanvien = @manv
        and month(Ngay)= @month
        and year(Ngay)= @year
        group by manhanvien,month(ngay),year(ngay)
    return 
end
select * from v_bangcong
select * from f_tonggio('NV02',10,2021)

--viết thủ tục trả về lương của một nhân viên khi nhập mã nhân viên, tháng,năm
select sogiolam from dbo.f_tonggio(@manv,@thang,@nam) Where MaNV=@manv and month(Thang)=@thang and year(thang)=@nam
alter proc proc_luong
@manv char(10),
@thang int,
@nam int
as begin
declare @sum int
set @sum= (select sogiolam from dbo.f_tonggio(@manv,@thang,@nam) Where MaNV=@manv and month(Thang)=@thang and year(thang)=@nam )
if(@sum>40)
begin
Update Luong Set SoNgayLam = (Select songaylam from dbo.f_NgayLamcuaThang(@manv,@thang,@nam) Where MaNV=@manv and month(Thang)=@thang and year(thang)=@nam)
Update Luong Set TongLuong=SoNgayLam*LuongMotNgay*(1.1-Thue) Where MaNV=@manv and month(Thang)=@thang and year(thang)=@nam
end
ELSE
begin
Update Luong Set SoNgayLam = (Select songaylam from dbo.f_NgayLamcuaThang(@manv,@thang,@nam) Where MaNV=@manv and month(Thang)=@thang  and year(thang)=@nam)
Update Luong Set TongLuong=SoNgayLam*LuongMotNgay*(0.8-Thue) Where MaNV=@manv and month(Thang)=@thang and year(thang)=@nam
end
end
EXEC  proc_luong 'NV02',10,2021;
EXEC  proc_luong 'NV01',10,2021;
select * from luong

--Tạo view  hiển thị mã nhân viên, họ tên ,tên phòng ban,mã dự án, tên dự án , nhiệm vụ

alter view v_thongtin(manhanvien,hoten,tenphongban,maduan,tenduan,nhiemvutrongduan)
as 
 select  nhanvien.manv,hoten,tenphongban,Nhiemvu.MaDuAn,Duan.TenDuAn,NhiemVuCV
 from nhanvien,phongban,DuAn,Nhiemvu
 where phongban.maphongban=nhanvien.maphongban
 and nhanvien.manv=Nhiemvu.manv
 and nhiemvu.maduan=duan.maduan
 select * from v_thongtin

--Phân quyền
-- 1. TẠO LOGIN USER
-- 1.1 TẠO NGƯỜI DÙNG CHO CHỨC NĂNG QUẢN LÝ 
SP_ADDLOGIN 'USLG_QUANLY', 'Lhb12345';
GO
-- 1.2 TẠO NHÂN VIÊN CHO CHỨC NĂNG QUẢN LÝ 
SP_ADDLOGIN 'USLG_NHANVIEN_1', 'Lhb12345';
GO
SP_ADDLOGIN 'USLG_NHANVIEN_2', 'Lhb12345';
GO
SP_ADDLOGIN 'USLG_NHANVIEN_3', 'Lhb12345';
GO
SP_ADDLOGIN 'USLG_NHANVIEN_4', 'Lhb12345';

-- 2. TẠO USER CHO PHÉP TRUY CẬP TỚI CSDL (BTL) QLHTChamCong
SP_GRANTDBACCESS 'USLG_QUANLY', 'US_QUANLY';
GO
SP_GRANTDBACCESS 'USLG_NHANVIEN_1', 'US_NHANVIEN_1';
GO
SP_GRANTDBACCESS 'USLG_NHANVIEN_2', 'US_NHANVIEN_2';
GO
SP_GRANTDBACCESS 'USLG_NHANVIEN_3', 'US_NHANVIEN_3';
GO
SP_GRANTDBACCESS 'USLG_NHANVIEN_4', 'US_NHANVIEN_4';
GO

-- 3. ĐỊNH NGHĨA ROLE CHO QLHTChamCong;
USE QLHTChamCong;
SP_ADDROLE 'ROLE_QUANLY';
SP_ADDROLE 'ROLE_NHANVIEN';

-- CẤP QUYỀN CHO ROLE NHÂN VIÊN
GRANT ALL ON tb_donhang TO ROLE_NHANVIEN;
GRANT ALL ON tb_SPDH TO ROLE_NHANVIEN;
GRANT SELECT ON tb_sanpham TO ROLE_NHANVIEN;
GRANT SELECT ON tb_khachhang TO ROLE_NHANVIEN;
GRANT SELECT ON tb_ctyvanchuyen TO ROLE_NHANVIEN;

-- CẤP QUYỀN CHO ROLE QUẢN LÝ
GRANT ALL ON phongban TO ROLE_QUANLY;
GRANT ALL ON nhanvien TO ROLE_QUANLY;
GRANT ALL ON checkin TO ROLE_QUANLY;
GRANT ALL ON taikhoan TO ROLE_QUANLY;
GRANT ALL ON chechkout TO ROLE_QUANLY;
GRANT ALL ON duan TO ROLE_QUANLY;
GRANT ALL ON nhiemvu TO ROLE_QUANLY;
GRANT ALL ON luong TO ROLE_QUANLY;


-- GÁN USER VÀO ROLE
SP_ADDROLEMEMBER 'ROLE_QUANLY', 'US_QUANLY';
GO
SP_ADDROLEMEMBER 'ROLE_NHANVIEN', 'US_NHANVIEN_1';
GO
SP_ADDROLEMEMBER 'ROLE_NHANVIEN', 'US_NHANVIEN_2';
GO
SP_ADDROLEMEMBER 'ROLE_NHANVIEN', 'US_NHANVIEN_3';
GO
SP_ADDROLEMEMBER 'ROLE_NHANVIEN', 'US_NHANVIEN_4';

 --trigger không cho update  mã phòng ban
alter trigger update_phongban
on PhongBan instead of  update 
as if update(MaPhongBan)
begin 
	print N'Bạn không thể thay đổi mã phòng ban.';
	rollback tran;
end
update PhongBan set MaPhongBan='PB06'where MaPhongBan='PB01'
select * from PhongBan

--
create view tk_chucvu(manhanvien,matkhau,chucvu)
as 
 select  manv.nhanvien,matkhau,chucvu
 from taikhoan,nhanvien
 where nhanvien.manv=taikhoan.manv
 select * from tk_chucvu