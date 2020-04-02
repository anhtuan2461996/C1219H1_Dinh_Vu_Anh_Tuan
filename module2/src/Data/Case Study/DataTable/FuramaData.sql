drop database if exists Furama;
create database Furama;
use Furama;
create table loai_khach(
	id_loai_khach int auto_increment primary key,
    ten_loai_khach nvarchar(255)
);
create table khach_hang(
	id_khach_hang int auto_increment primary key,
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
	id_kieu_thue int auto_increment primary key,
	ten_kieu_thue nvarchar (45),
	gia int
);
create table loai_dich_vu(
	id_loai_dich_vu int auto_increment primary key,
	ten_loai_dich_vu nvarchar(45)
);
create table dich_vu(
	id_dich_vu int auto_increment primary key,
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
	id_vi_tri int auto_increment primary key,
    ten_vi_tri nvarchar (45)
);
create table trinh_do(
	id_trinh_do int auto_increment primary key,
    trinh_do nvarchar(45)
);
create table bo_phan(
	id_bo_phan int auto_increment primary key,
    ten_bo_phan nvarchar (45)
);
create table nhan_vien(
	id_nhan_vien int auto_increment primary key,
    ho_ten nvarchar(255),
    ngay_sinh date,
    so_cmnd nvarchar(45),
    luong nvarchar(45),
    sdt nvarchar (45),
    email nvarchar(45),
    dia_chi nvarchar(45),
    id_vi_tri int,
    foreign key (id_vi_tri) references vi_tri(id_vi_tri),
    id_trinh_do int,
    foreign key (id_trinh_do) references trinh_do(id_trinh_do),
    id_bo_phan int,
    foreign key (id_bo_phan) references bo_phan(id_bo_phan)
);
create table hop_dong(
	id_hop_dong int auto_increment primary key,
    id_nhan_vien int,
    foreign key (id_nhan_vien) references nhan_vien(id_nhan_vien),
    id_dich_vu int,
    foreign key (id_dich_vu) references dich_vu(id_dich_vu),
    id_khach_hang int,
    foreign key (id_khach_hang) references khach_hang(id_khach_hang),
    ngay_lam_hop_dong date,
    ngay_ket_thuc date,
    tien_dat_coc int,
    tong_tien int
);
create table dich_vu_di_kem(
	id_dich_vu_di_kem int auto_increment primary key,
    ten_dich_vu_di_kem nvarchar (45),
    gia int,
    don_vi int,
    trang_thai_khai_dung nvarchar(45)
);
create table hop_dong_chi_tiet(
	id_hop_dong_chi_tiet int auto_increment primary key,
    so_luong int not null,
    id_dich_vu_di_kem int,
    foreign key (id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem),
    id_hop_dong int,
    foreign key (id_hop_dong) references hop_dong(id_hop_dong)
);

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

    select dich_vu.id_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu, ngay_lam_hop_dong from dich_vu
    inner join loai_dich_vu on dich_vu.id_loai_dich_vu = loai_dich_vu.id_loai_dich_vu
    inner join hop_dong on dich_vu.id_dich_vu = hop_dong.id_dich_vu
    group by id_dich_vu
    having ngay_lam_hop_dong not between '2019-01-01' and '2019-03-31' ;
    
-- 7.	Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu của tất cả các loại dịch vụ đã 
-- từng được Khách hàng đặt phòng trong năm 2018 nhưng chưa từng được Khách hàng đặt phòng  trong năm 2019.

	select dich_vu.id_dich_vu, dich_vu.ten_dich_vu, dich_vu.dien_tich, dich_vu.so_nguoi_toi_da, dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu ,year(ngay_lam_hop_dong), max(ngay_lam_hop_dong) from dich_vu
    inner join loai_dich_vu on dich_vu.id_loai_dich_vu = loai_dich_vu.id_loai_dich_vu
	inner join hop_dong on dich_vu.id_dich_vu = hop_dong.id_dich_vu
    where year(ngay_lam_hop_dong) = '2018' and year(ngay_lam_hop_dong) <> '2019';

-- 8.	Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
	select DISTINCT* from khach_hang;
    
    select ho_ten from khach_hang
    group by ho_ten;
    
    select DISTINCTROW ho_ten from khach_hang;
    
-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2019 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
	
    select month(ngay_lam_hop_dong),count(id_khach_hang) from hop_dong
    where year(ngay_lam_hop_dong) =2019
    group by month(ngay_lam_hop_dong)
    order by month(ngay_lam_hop_dong);
 
-- 10.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm. Kết quả hiển thị bao gồm IDHopDong, 
-- NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem (được tính dựa trên việc count các IDHopDongChiTiet).
	select hop_dong.id_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,count(dich_vu_di_kem.id_dich_vu_di_kem) from hop_dong
    inner join hop_dong_chi_tiet on hop_dong.id_hop_dong = hop_dong_chi_tiet.id_hop_dong
    inner join dich_vu_di_kem on hop_dong_chi_tiet.id_dich_vu_di_kem = dich_vu_di_kem.id_dich_vu_di_kem
	group by hop_dong.id_hop_dong;

-- 11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách hàng có TenLoaiKhachHang là “Diamond” và có địa chỉ là “Vinh”
-- hoặc “Quảng Ngãi”.
	select khach_hang.id_khach_hang,khach_hang.ho_ten, khach_hang.dia_chi,loai_khach.ten_loai_khach, dich_vu_di_kem.ten_dich_vu_di_kem from hop_dong
    inner join khach_hang on khach_hang.id_khach_hang = hop_dong.id_khach_hang
    inner join loai_khach on khach_hang.id_loai_khach = loai_khach.id_loai_khach
    inner join hop_dong_chi_tiet on hop_dong.id_hop_dong = hop_dong.id_hop_dong
    inner join dich_vu_di_kem on hop_dong_chi_tiet.id_dich_vu_di_kem = dich_vu_di_kem.id_dich_vu_di_kem
    where (khach_hang.dia_chi = 'Vinh' or khach_hang.dia_chi = 'Quang Ngai')and loai_khach.ten_loai_khach = 'Diamond' 
    group by dich_vu_di_kem.ten_dich_vu_di_kem;
    
-- 12.	Hiển thị thông tin IDHopDong, TenNhanVien, TenKhachHang, SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem 
-- (được tính dựa trên tổng Hợp đồng chi tiết), TienDatCoc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2019
-- nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2019.

		select hop_dong.id_hop_dong, nhan_vien.ho_ten as ten_nhan_vien ,khach_hang.ho_ten as ten_khach_hang, khach_hang.sdt as so_dien_thoai_khach_hang, dich_vu.ten_dich_vu,count(hop_dong_chi_tiet.id_dich_vu_di_kem) as so_luong_dich_vu_di_kem, sum(hop_dong.tien_dat_coc) as tong_tien_dat_coc,hop_dong.ngay_lam_hop_dong
		from hop_dong
		inner join nhan_vien on hop_dong.id_nhan_vien = nhan_vien.id_nhan_vien
		inner join khach_hang on hop_dong.id_khach_hang = khach_hang.id_khach_hang
		inner join dich_vu on hop_dong.id_dich_vu = dich_vu.id_dich_vu
		inner join hop_dong_chi_tiet on hop_dong.id_hop_dong = hop_dong_chi_tiet.id_hop_dong
		where year(ngay_lam_hop_dong ) = 2019 and ((month(ngay_lam_hop_dong) between 10 and 12) and not month(ngay_lam_hop_dong) between 1 and 6) 	
		group by hop_dong.id_hop_dong;
    
    
-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng 
-- nhiều như nhau).

	/*select dich_vu_di_kem.ten_dich_vu_di_kem,max(hop_dong_chi_tiet.id_dich_vu_di_kem) as so_lan_dung from hop_dong_chi_tiet
    inner join dich_vu_di_kem on hop_dong_chi_tiet.id_dich_vu_di_kem = dich_vu_di_kem.id_dich_vu_di_kem
    group by dich_vu_di_kem.ten_dich_vu_di_kem;*/
    
	create temporary table temp 
	select dich_vu_di_kem.ten_dich_vu_di_kem, count(hop_dong_chi_tiet.id_dich_vu_di_kem) as so_lan_su_dung from hop_dong_chi_tiet
	inner join dich_vu_di_kem on dich_vu_di_kem.id_dich_vu_di_kem = hop_dong_chi_tiet.id_dich_vu_di_kem
	group by dich_vu_di_kem.ten_dich_vu_di_kem;
    
    -- select số lần sử dụng nhieu nhat
    select * from temp; 
	create temporary table temp1
	select max(temp.so_lan_su_dung) as max_so_lan_su_dung from temp;
	select * from temp1;
    -- so sanh in ra so lan su dang nhu nhau
    select * from temp
	inner join temp1 on temp.so_lan_su_dung = temp1.max_so_lan_su_dung;
	drop temporary table temp;
	drop temporary table temp1;
    
-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm IDHopDong,
--  TenLoaiDichVu, TenDichVuDiKem, SoLanSuDung.
    select hop_dong.id_hop_dong,loai_dich_vu.ten_loai_dich_vu,dich_vu_di_kem.ten_dich_vu_di_kem,count(hop_dong_chi_tiet.id_dich_vu_di_kem) as so_lan
	from hop_dong
	inner join dich_vu on dich_vu.id_dich_vu = hop_dong.id_dich_vu
	inner join loai_dich_vu on loai_dich_vu.id_loai_dich_vu = dich_vu.id_loai_dich_vu
	inner join hop_dong_chi_tiet on hop_dong_chi_tiet.id_hop_dong = hop_dong.id_hop_dong
	inner join dich_vu_di_kem on dich_vu_di_kem.id_dich_vu_di_kem = hop_dong_chi_tiet.id_dich_vu_di_kem
	group by dich_vu_di_kem.ten_dich_vu_di_kem 
	having so_lan = 1;
    
-- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm IDNhanVien, HoTen, TrinhDo, TenBoPhan, SoDienThoai, DiaChi mới chỉ lập được 
-- tối đa 3 hợp đồng từ năm 2018 đến 2019.    
	select nhan_vien.id_nhan_vien,nhan_vien.ho_ten as ho_ten_nhan_vien,trinh_do.trinh_do,bo_phan.ten_bo_phan,nhan_vien.sdt,nhan_vien.dia_chi,count(hop_dong.id_nhan_vien) as so_lan_tao_hop_dong
	from nhan_vien
	inner join hop_dong on hop_dong.id_nhan_vien = nhan_vien.id_nhan_vien
	inner join bo_phan on bo_phan.id_bo_phan = nhan_vien.id_bo_phan
	inner join trinh_do on trinh_do.id_trinh_do = nhan_vien.id_trinh_do
	where hop_dong.ngay_lam_hop_dong between '2018-01-01' and '2019-12-31'
	group by nhan_vien.id_nhan_vien
	having so_lan_tao_hop_dong <=3;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2017 đến năm 2019.
	set sql_safe_updates = 0;
	delete from nhan_vien where id_nhan_vien not in
	(
	select id_nhan_vien
	from hop_dong
	where year(ngay_lam_hop_dong) between 2017 and 2019
	group by id_nhan_vien
	) ;
	set sql_safe_updates=1;
-- 17.	Cập nhật thông tin những khách hàng có TenLoaiKhachHang từ  Platinium lên Diamond, chỉ cập nhật những khách hàng đã từng 
-- đặt phòng với tổng Tiền thanh toán trong năm 2019 là lớn hơn 10.000.000 VNĐ.

	update khach_hang, (select hop_dong.id_khach_hang as id, sum(hop_dong.tong_tien) as tong_tien
					from hop_dong
                    where year(hop_dong.ngay_lam_hop_dong) = 2019
                    group by hop_dong.id_khach_hang
                    having tong_tien>100000000) as temp 
	set khach_hang.id_loai_khach = (select loai_khach.id_loai_khach 
								from loai_khach 
                                where loai_khach.ten_loai_khach = 'Diamond')
	where khach_hang.id_loai_khach = (select loai_khach.id_loai_khach 
								from loai_khach 
                                where loai_khach.ten_loai_khach = 'Platinium')
	and temp.id = khach_hang.id_khach_hang;
-- 18.	Xóa những khách hàng có hợp đồng trước năm 2016 (chú ý ràngbuộc giữa các bảng).
	delete khach_hang,hop_dong,hop_dong_chi_tiet from khach_hang 
	inner join hop_dong on hop_dong.id_khach_hang = khach_hang.id_khach_hang
	inner join hop_dong_chi_tiet on hop_dong_chi_tiet.id_hop_dong = hop_dong.id_hop_dong
	where not exists(select hop_dong.id_hop_dong 
			where year(hop_dong.ngay_lam_hop_dong) > 2016 and khach_hang.id_khach_hang = hop_dong.id_khach_hang);

-- 19.	Cập nhật giá cho các Dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2019 lên gấp đôi.
	update dich_vu_di_kem 	inner join (select dich_vu_di_kem.ten_dich_vu_di_kem as ten_dich_vu_di_kem
	from hop_dong_chi_tiet inner join dich_vu_di_kem on dich_vu_di_kem.id_dich_vu_di_kem = hop_dong_chi_tiet.id_dich_vu_di_kem
	group by dich_vu_di_kem.id_dich_vu_di_kem
	having count(hop_dong_chi_tiet.id_dich_vu_di_kem) >4) as temp set dich_vu_di_kem.gia = dich_vu_di_kem.gia*2 where dich_vu_di_kem.ten_dich_vu_di_kem = temp.ten_dich_vu_di_kem;                            

-- 20.	Hiển thị thông tin của tất cả các Nhân viên và Khách hàng có trong hệ thống, thông tin hiển thị bao gồm ID
-- (IDNhanVien, IDKhachHang), HoTen, Email, SoDienThoai, NgaySinh, DiaChi.
	select id_nhan_vien, ho_ten,email,sdt ,ngay_sinh,dia_chi from nhan_vien
    union all
    select id_khach_hang, ho_ten,email,sdt ,ngay_sinh,dia_chi from khach_hang;
    
    