drop database if exists Furama;
create database Furama;
use Furama;
create table loai_khach(
	id_loai_khach int primary key,
    ten_loai_khach nvarchar(255)
);
create table khach_hang(
	id_khach_hang int primary key,
    id_loai_khach int,
    foreign key (id_loai_khach) references loai_khach(id_loai_khach),
    ho_ten nvarchar(45) not null,
    ngay_sinh date,
    -- check (gioiTinh like 'nam'||gioiTinh like 'nu'||gioiTinh like 'nữ'||gioiTinh like 'Nam'||gioiTinh like 'Nu'||gioiTinh like 'Nữ'),
    so_cmnd varchar(45),
    -- check (CMND>=100000000&&cmnd<=999999999),
    sdt varchar(45),
    --  check (sdt >=1000000000 && sdt < 999999999999),
    email nvarchar(255),
    -- check (email like '%_@__%.__%'),
    dia_chi nvarchar (45)
);
create table kieu_thue(
	id_kieu_thue int primary key,
	ten_kieu_thue nvarchar (45),
	gia int
);
create table loai_dich_vu(
	id_loai_dich_vu int primary key,
	ten_loai_dich_vu nvarchar(45)
);
create table dich_vu(
	id_dich_vu int primary key,
	ten_dich_vu nvarchar (45),
	dien_tich int ,
	so_tang int,
	so_nguoi_toi_da nvarchar (45),
	chi_phi_thue nvarchar (45),
	trang_thai nvarchar(45),
	id_kieu_thue int,
	foreign key (id_kieu_thue) references kieu_thue(id_kieu_thue),
	id_loai_dich_vu int,
	foreign key (id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu)
);
create table vi_tri(
	id_vi_tri int primary key,
    ten_vi_tri nvarchar (45)
);
create table trinh_do(
	id_trinh_do int primary key,
    trinh_do nvarchar(45)
);
create table bo_phan(
	id_bo_phan int primary key,
    ten_bo_phan nvarchar (45)
);
create table nhan_vien(
	id_nhan_vien int primary key,
    ho_ten nvarchar(255),
    id_vi_tri int,
    foreign key (id_vi_tri) references vi_tri(id_vi_tri),
    id_trinh_do int,
    foreign key (id_trinh_do) references trinh_do(id_trinh_do),
    id_bo_phan int,
    foreign key (id_bo_phan) references bo_phan(id_bo_phan),
    ngay_sinh date,
    so_cmnd nvarchar(45),
    luong nvarchar(45),
    sdt nvarchar (45),
    email nvarchar(45),
    dia_chi nvarchar(45)
);
create table hop_dong(
	id_hop_dong int primary key,
    id_nhan_vien int,
    foreign key (id_nhan_vien) references nhan_vien(id_nhan_vien),
    id_dich_vu int,
    foreign key (id_dich_vu) references dich_vu(id_dich_vu),
    id_khach_hang int,
    foreign key (id_khach_hang) references khach_hang(id_khach_hang),
    ngay_lam_hop_dong int,
    ngay_ket_thuc int,
    tien_dat_coc int,
    tong_tien int
);
create table dich_vu_di_kem(
	id_dich_vu_di_kem int primary key,
    ten_dich_vu_di_kem nvarchar (45),
    gia int,
    don_vi int,
    trang_thai_khai_dung nvarchar(45)
);
create table hop_dong_chi_tiet(
	id_hop_dong_chi_tiet int primary key,
    so_luong int not null,
    id_dich_vu_di_kem int,
    foreign key (id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem),
    id_hop_dong int,
    foreign key (id_hop_dong) references hop_dong(id_hop_dong)
);

INSERT INTO nhan_vien
VALUES
(1, "Pham Anh Thien", 1, 1, 1, "1995/07/19", 2017444302, 20000000, "0913 412 421", "thien@gmail.com", "Da nang"),
(2, "Khada Jhin", 1, 1, 1, "1980/02/03", 668005001, 15000000, "0913 981 892", "jhin@gmail.com", "Canada"),
(3, "Ha Xuan Nguyen", 3, 2, 2, "1990/12/28", 217791093, 6000000, "0905 361 421", "nguyen@gmail.com", "Hue"),
(4, "Trinh Xuan Quyet", 2, 3, 6, "1996/12/15", 165591551, 9000000, "0165 837 184", "quyet@gmail.com", "Quang Tri"),
(5, "Doan Sy Khuong", 7, 1, 5, "1995/04/05", 131309750, 16000000, "0121 574 104", "khuong@gmail.com", "Da nang"),
(6, "Nguyen Phu Khoa", 6, 3, 3, "1997/08/28", 121931597, 8000000, "0913 796 219", "khoa@gmail.com", "Da nang"),
(7, "Nguyen Xuan Khoat", 5, 5, 6, "1995/01/12", 320781617, 10000000, "0122 927 184", "khoat@gmail.com", "Quang Tri"),
(8, "Tran Thi Mong Nhu", 8, 2, 7, "2001/11/20", 488964520, 5000000, "0913 283 408", "nhu@gmail.com", "Ha Noi"),
(9, "Truong Dinh Tuan", 3, 3, 2, "1999/03/04", 363175234, 8000000, "0163 715 583", "tuan@gmail.com", "Lao Cai"),
(10, "Pham Thi Thu Trang", 1, 2, 4, "1980/07/05", 201701763, 7000000, "0913 425 383", "trang@gmail.com", "Nha Trang"),
(11, "Doan Huy Hoang", 6, 5, 5, "1995/06/30", 396950312, 8000000, "0913 412 874", "hoang@gmail.com", "Da nang"),
(12, "Pham Thi Ngoc Thu", 1, 4, 5, "1995/02/12", 942199693, 7000000, "0793 180 500", "thu@gmail.com", "Ha Noi"),
(13, "Truong Ngoc Khanh", 2, 2, 3, "1989/06/06", 784193285, 12000000, "0122 672 182", "khanh@gmail.com", "Quang Nam"),
(14, "Trinh Yen Nhi", 8, 4, 2, "2000/09/18", 710578936, 5000000, "0166 945 194", "nhi@gmail.com", "Da nang"),
(15, "Do Thi Nhu Ngoc", 5, 3, 3, "1999/06/01", 707012970, 10000000, "0902 381 608", "ngoc@gmail.com", "Nghe An"),
(16, "Nguyen Hai Hung", 7, 1, 5, "1992/12/20", 315707301, 6000000, "0907 178 107", "hung@gmail.com", "Thanh Hoa"),
(17, "Phan Ha Nguyen Hai", 8, 2, 1, "1995/05/19", 673789501, 5000000, "0713 822 392", "hai@gmail.com", "Da Lat"),
(18, "Do Thi Hanh Nguyen", 2, 4, 2, "1988/08/09", 395839105, 8000000, "0827 802 122", "nguyen@gmail.com", "Hai Phong"),
(19, "Tran Nhan Tam", 4, 5, 3, "1991/02/11", 698284010, 7000000, "0713 822 572", "tam@gmail.com", "Bac Giang");
-- id_khach_hang, id_loai_khach, ho_ten, ngaysinh, cmnd_khach_hang, sdt, email, dia_chi
INSERT INTO khach_hang
VALUES
(1, 1, "Tran Huu Minh", "1980/12/05", 315472363, "0991 981 939", "minh@yahoo.com", "Lam Dong"),
(2, 4, "Doan Thuy Trang", "1988/11/07", 151636777, "0173 919 166", "trang@yahoo.com", "Ha Noi"),
(3, 1, "Phan Van Duc", "1985/3/19", 151847672, "0184 458 563", "duc@yahoo.com", "Quang Tri"),
(4, 2, "Ngo Thi Van", "1997/12/05", 105885174, "0683 234 461", "van@yahoo.com", "Quang Binh"),
(5, 1, "Nguyen Phuc Kien", "1999/12/05", 593781049, "0157 472 853", "kien@yahoo.com", "Nha Trang"),
(6, 3, "Dang Thi Thu Thao", "1990/12/05", 315423577, "0666 136 737", "thao@yahoo.com", "Dak Lak"),
(7, 5, "Trinh Yen Nhi", "1980/12/05", 398164817, "0768 116 697", "nhi@yahoo.com", "Quang Nam"),
(8, 1, "Le Thanh Liem", "1993/12/05", 598737910, "01884 252 123", "liem@yahoo.com", "Tam Ki"),
(9, 4, "Ngo Thanh Tung", "1994/12/05", 103859277, "0737 153 863", "tung@yahoo.com", "Da Nang"),
(10, 1, "Hoang Dieu My", "1991/12/05", 948209385, "091 514 546", "my@yahoo.com", "Quang Tri"),
(11, 2, "Trinh Yen Nhi", "1992/02/14", 874394813, "012 684 3613", "nhitrinh@gmail.com", "Da Nang");

INSERT INTO vi_tri
VALUES
(1, "Tong giam doc"),
(2, "Pho giam doc"),
(3, "Thu ki"),
(4, "Truong phong"),
(5, "Nhan vien"),
(6, "Bao ve"),
(7, "Lao cong"),
(8, "Thuc tap sinh");
INSERT INTO bo_phan
VALUES
(1, "Tong quan ly"),
(2, "Nhan su"),
(3, "Buong phong"),
(4, "Nha hang"),
(5, "Spa"),
(6, "Marketing"),
(7, "Ve sinh moi truong"),
(8, "Tai chinh"),
(9, "Co so ha tang");
INSERT INTO trinh_do
VALUES
(1, "Dai hoc"),
(2, "Cao dang"),
(3, "Trung cap"),
(4, "Trung hoc pho thong"),
(5, "Khong co trinh do");
-- id_loai_khach, ten_loai_khach
INSERT INTO loai_khach
VALUES
(1, "Diamond"),
(2, "Platinum"),
(3, "Gold"),
(4, "Silver"),
(5, "Member");
-- id_kieu_thue, ten_kieu_thue, gia
INSERT INTO kieu_thue
VALUES
(1, "Thang", 12000000),
(2, "Tuan", 8000000),
(3, "Ngay", 6000000),
(4, "Gio", 400000);
INSERT INTO loai_dich_vu
VALUES
(1, "Villa"),
(2, "House"),
(3, "Room");

-- 1.	Thêm mới thông tin cho tất cả các bảng có trong CSDL để có thể thõa mãn các yêu cầu bên dưới.
-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 ký tự.
	select * from nhan_vien
    where ((ho_ten like 'H%') or(ho_ten like 'T%')or(ho_ten like 'K%') and length(ho_ten <=15));
    
-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
	select * from khach_hang
    where ((dia_chi like 'Da Nang')or(dia_chi like 'Quang Tri') and ((year(now())-year(ngay_sinh)>=18) and (year(now())-year(ngay_sinh)<=54)));
    
-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách
-- hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
	select hop_dong.id_khach_hang,ho_ten,loai_khach.id_loai_khach, count(hop_dong.id_khach_hang) as so_lan from hop_dong
	inner join khach_hang on hop_dong.id_khach_hang = khach_hang.id_khach_hang
    inner join loai_khach on khach_hang.id_loai_khach = loai_khach.id_loai_khach
    where loai_khach.ten_loai_khach ='Diamond' group by hop_dong.id_khach_hang order by so_lan;
    
-- 5.	Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien (Với TongTien được tính theo công thức như sau
-- : ChiPhiThue + SoLuong*Gia, với SoLuong và Giá là từ bảng DichVuDiKem) cho tất cả các Khách hàng đã từng đặt phỏng. (Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
    select khach_hang.id_khach_hang, ho_ten, ten_loai_khach, hop_dong.id_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, sum(chi_phi_thue+so_luong*gia) as tongtien
    from khach_hang
    left join hop_dong on khach_hang.id_khach_hang = hop_dong.id_khach_hang
	inner join loai_khach on khach_hang.id_loai_khach = loai_khach.id_loai_khach
    left join dich_vu on hop_dong.id_dich_vu = dich_vu.id_dich_vu
    left join hop_dong_chi_tiet on hop_dong.id_hop_dong = hop_dong_chi_tiet.id_hop_dong
    left join dich_vu_di_kem on hop_dong_chi_tiet.id_dich_vu_di_kem = dich_vu_di_kem.id_dich_vu_di_kem
	group by khach_hang.id_khach_hang;
    
-- 6.	Hiển thị IDDichVu, TenDichVu, DienTich, ChiPhiThue, TenLoaiDichVu của tất cả các loại Dịch vụ chưa từng được Khách hàng thực hiện 
-- đặt từ quý 1 của năm 2019 (Quý 1 là tháng 1, 2, 3).
	
    select dich_vu.id_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu, max(ngay_lam_hop_dong) as ngay_dat_gan_nhat from dich_vu
    inner join loai_dich_vu on dich_vu.id_loai_dich_vu = loai_dich_vu.id_loai_dich_vu
    inner join hop_dong on dich_vu.id_dich_vu = hop_dong.id_dich_vu
    group by id_dich_vu
    having ngay_dat_gan_nhat < '2019-01-01';
    
-- 7.	Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu của tất cả các loại dịch vụ đã 
-- từng được Khách hàng đặt phòng trong năm 2018 nhưng chưa từng được Khách hàng đặt phòng  trong năm 2019.
	select dich_vu.id_dich_vu, dich_vu.ten_dich_vu, dich_vu.dien_tich, dich_vu.so_nguoi_toi_da, dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu ,year(ngay_lam_hop_dong), max(ngay_lam_hop_dong) from dich_vu
    inner join loai_dich_vu on dich_vu.id_loai_dich_vu = loai_dich_vu.id_loai_dich_vu
	inner join hop_dong on dich_vu.id_dich_vu = hop_dong.id_dich_vu
    where year(ngay_lam_hop_dong) = '2018'
    group by dich_vu.id_dich_vu
    having max(ngay_lam_hop_dong) <> '2019';

-- 8.	Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
	select DISTINCT* from khach_hang;
    
    select ho_ten from khach_hang
    group by ho_ten;
    
    select DISTINCTROW * from khach_hang;
    
-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
	select month(ngay_lam_hop_dong),count(id_hop_dong) from hop_dong
    where year(ngay_lam_hop_dong) =2019
    group by month(ngay_lam_hop_dong);

-- 10.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm. Kết quả hiển thị bao gồm IDHopDong, 
-- NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem (được tính dựa trên việc count các IDHopDongChiTiet).
	select * from khach_hang;

