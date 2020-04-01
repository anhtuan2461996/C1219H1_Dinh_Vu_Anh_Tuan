use Furama;
-- insert table bo_phan
insert into bo_phan (ten_bo_phan)
values ('Cap Lanh Dao'),
('Buong Phong'),
('Le Tan'),
('Am Thuc'),
('Tai chinh - Ke toan'),
('Kinh Doanh');

-- insert table dich_vu
insert into dich_vu (ten_dich_vu,dien_tich,so_tang,so_nguoi_toi_da,chi_phi_thue,trang_thai,id_kieu_thue,id_loai_dich_vu)
values ('Villa sieu thoang',120,10,9,20000000,'on',1,1),
('House co ho boi',100,10,9,2000000,'on',1,2),
('Room sieu dep',70,11,50,500000,'on',1,3);
-- ---------------------------------------------------------------------------------------------------------------------
insert into dich_vu (ten_dich_vu,dien_tich,so_tang,so_nguoi_toi_da,chi_phi_thue,trang_thai,id_kieu_thue,id_loai_dich_vu)
values ('Villa sieu rong',120,10,9,20000000,'on',3,1);
-- ---------------------------------------------------------------------------------------------------------------------
insert into dich_vu (ten_dich_vu,dien_tich,so_tang,so_nguoi_toi_da,chi_phi_thue,trang_thai,id_kieu_thue,id_loai_dich_vu)
values ('Room sieu dai',120,10,9,20000000,'on',3,3);
-- ---------------------------------------------------------------------------------------------------------------------

-- insert table dich_vu_di_kem
insert into dich_vu_di_kem (ten_dich_vu_di_kem,gia,don_vi,trang_thai)
values ('massage',500000,1,'on'),
('karaoke',200000,1,'on'),
('food',50000,1,'on'),
('water',10000,1,'on'),
('car',175000,1,'on');
-- ------------------------------------------------------------------
insert into dich_vu_di_kem (ten_dich_vu_di_kem,gia,don_vi,trang_thai)
values ('bicycle',50000,1,'on');

-- insert table hop_dong
-- data coppy right https://mockaroo.com/
insert into hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu)
values 
('2019-01-20', '2019-08-28', 33311310, 15, 2, 2),
('2019-02-25', '2019-05-28', 21474444, 9, 10, 2),
('2019-01-07', '2019-04-26', 35782696, 14, 5, 1),
('2019-03-13', '2019-06-16', 59705155, 14, 2, 3),
('2019-02-14', '2019-07-05', 17635069, 9, 3, 1),
('2019-01-23', '2019-08-22', 36616762, 2, 8, 3),
('2019-02-06', '2019-04-21', 53220952, 7, 3, 2),
('2019-02-07', '2019-12-11', 53031485, 4, 3, 1),
('2019-03-21', '2019-07-05', 23050719, 14, 2, 3),
('2019-02-11', '2019-04-02', 56933190, 12, 6, 2),
('2019-02-25', '2019-05-07', 42086959, 5, 7, 2),
('2019-03-07', '2020-01-03', 30349241, 6, 4, 3),
('2019-01-01', '2019-05-17', 62257183, 11, 8, 1),
('2019-01-14', '2020-02-28', 65902648, 1, 4, 1),
('2019-01-02', '2020-03-19', 24933149, 7, 3, 1),
('2019-01-06', '2020-03-13', 21738333, 3, 9, 3),
('2019-01-05', '2019-06-13', 58632598, 8, 9, 1),
('2019-03-17', '2020-01-23', 14259441, 6, 8, 1),
('2019-01-01', '2019-05-18', 30722160, 3, 7, 1),
('2019-01-08', '2020-02-20', 54402707, 2, 11, 2),
('2019-02-10', '2020-02-18', 67039693, 4, 10, 3),
('2019-01-05', '2019-05-26', 53963608, 14, 6, 3),
('2019-02-28', '2019-06-06', 46505366, 6, 7, 2),
('2019-03-17', '2019-11-09', 47058559, 2, 5, 3),
('2019-01-27', '2019-04-08', 41940950, 3, 4, 2),
('2019-01-09', '2019-06-15', 35410337, 11, 1, 3),
('2019-02-18', '2019-04-05', 18287673, 11, 7, 2),
('2019-03-24', '2020-03-07', 34710103, 11, 3, 3),
('2019-02-20', '2020-01-18', 19776177, 6, 8, 1),
('2019-03-29', '2020-02-28', 62577086, 4, 6, 1),
('2019-02-08', '2020-03-13', 16480395, 17, 1, 1),
('2019-03-06', '2020-02-07', 8600594, 1, 10, 2),
('2019-02-08', '2020-03-08', 58446286, 10, 1, 3),
('2019-02-10', '2019-05-11', 49839945, 16, 3, 3),
('2019-03-13', '2019-07-02', 42815854, 11, 11, 3),
('2019-03-05', '2019-05-20', 57891728, 5, 7, 3),
('2019-03-19', '2020-01-24', 12227922, 3, 8, 2),
('2019-01-08', '2019-06-11', 17560602, 6, 5, 1),
('2019-03-05', '2019-06-01', 30993515, 13, 2, 1),
('2019-03-28', '2020-02-06', 44925329, 6, 1, 2),
('2019-03-14', '2019-10-23', 10452122, 16, 3, 2),
('2019-03-04', '2019-05-09', 64261407, 6, 10, 1),
('2019-03-25', '2019-10-17', 28010722, 5, 9, 1),
('2019-03-22', '2019-11-15', 59152339, 3, 4, 2),
('2019-02-18', '2020-03-12', 15213860, 2, 8, 3),
('2019-01-12', '2019-08-06', 48939064, 5, 4, 3),
('2019-03-02', '2019-07-04', 35060734, 7, 1, 2),
('2019-03-19', '2020-02-04', 42670069, 18, 3, 3),
('2019-03-04', '2020-01-21', 13240431, 18, 10, 2),
('2019-03-22', '2020-03-01', 65249052, 14, 7, 3),
('2019-01-03', '2020-05-11', 71551385, 14, 10, 3),
('2019-01-29', '2020-05-09', 16882509, 15, 2, 1),
('2018-09-19', '2020-04-03', 31404686, 18, 2, 1),
('2019-01-19', '2020-04-22', 8745306, 9, 6, 3),
('2019-03-03', '2020-05-05', 32407201, 9, 1, 2),
('2019-01-14', '2020-05-16', 27888278, 4, 11, 2),
('2019-12-06', '2020-05-20', 14265380, 15, 7, 1),
('2019-12-03', '2020-04-16', 62874586, 5, 9, 2),
('2019-05-03', '2020-05-08', 62982545, 15, 8, 2),
('2019-12-09', '2020-04-26', 18331392, 15, 4, 1);
-- ------------------------------------------------------------------------------------------------------
insert into hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu)
values 
('2018-03-31', '2018-05-30', 10000000, 1, 12, 1);
-- ------------------------------------------------------------------------------------------------------
insert into hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu)
values 
('2018-03-31', '2018-05-30', 10000000, 3, 12, 4);
-- ------------------------------------------------------------------------------------------------------
insert into hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu)
values 
('2019-11-25', '2019-12-30', 20000000, 3, 12, 5),
('2018-06-20', '2019-08-30', 50000000, 4, 5, 4);
-- ------------------------------------------------------------------------------------------------------
insert into hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu)
values 
('2019-06-20', '2019-09-30', 50000000, 4, 5, 4);
-- ------------------------------------------------------------------------------------------------------
insert into hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu)
values 
('2016-06-20', '2017-09-30', 50000000, 19, 3, 4);

-- insert table hop_dong_chi_tiet
-- data coppy right https://mockaroo.com/
insert into hop_dong_chi_tiet (so_luong,id_hop_dong,id_dich_vu_di_kem)
values 
(3, 58, 3),
(4, 7, 4),
(10, 7, 4),
(3, 2, 5),
(4, 56, 1),
(3, 60, 3),
(1, 13, 4),
(2, 21, 4),
(3, 40, 4),
(10, 50, 1),
(2, 28, 3),
(4, 54, 2),
(9, 55, 5),
(6, 40, 3),
(10, 33, 1),
(3, 13, 4),
(7, 26, 3),
(2, 22, 1),
(8, 59, 4),
(5, 52, 5),
(10, 17, 5),
(9, 33, 4),
(9, 22, 2),
(3, 42, 1),
(8, 36, 3),
(3, 3, 5),
(1, 45, 3),
(9, 41, 1),
(2, 21, 3),
(6, 53, 2),
(2, 59, 3),
(7, 21, 2),
(6, 38, 1),
(5, 32, 5),
(2, 23, 3),
(1, 45, 4),
(9, 17, 3),
(6, 41, 5),
(6, 23, 5),
(5, 9, 4),
(7, 55, 2),
(6, 36, 5),
(9, 17, 4),
(1, 6, 1),
(6, 12, 2),
(8, 48, 2),
(5, 24, 3),
(1, 18, 2),
(9, 24, 1),
(3, 4, 3),
(7, 44, 2),
(4, 9, 5),
(9, 31, 4),
(4, 24, 4),
(2, 59, 5),
(6, 55, 5),
(9, 46, 1),
(5, 12, 2),
(2, 51, 1),
(9, 16, 4);
-- -------------------------------------------------------------------
insert into hop_dong_chi_tiet (so_luong,id_hop_dong,id_dich_vu_di_kem)
values 
(2, 63, 3);
-- -------------------------------------------------------------------
insert into hop_dong_chi_tiet (so_luong,id_hop_dong,id_dich_vu_di_kem)
values 
(1, 65, 6);

-- insert table khach_hang
-- data coppy right Chong Chong
insert into khach_hang (ho_ten,ngay_sinh,cmnd_khach_hang,sdt,email,dia_chi,id_loai_khach)
values 
('Tran Huu Minh', '1980/12/05', 315472363, '0991 981 939', 'minh@yahoo.com', 'Lam Dong',2),
('Doan Thuy Trang', '1988/11/07', 151636777, '0173 919 166', 'trang@yahoo.com', 'Ha Noi',1),
('Phan Van Duc', '1985/3/19', 151847672, '0184 458 563', 'duc@yahoo.com', 'Quang Tri',3),
('Ngo Thi Van', '1997/12/05', 105885174, '0683 234 461', 'van@yahoo.com', 'Quang Binh',4),
('Nguyen Phuc Kien', '1999/12/05', 593781049, '0157 472 853', 'kien@yahoo.com', 'Nha Trang',1),
('Dang Thi Thu Thao', '1990/12/05', 315423577, '0666 136 737', 'thao@yahoo.com', 'Dak Lak',5),
('Trinh Yen Nhi', '1980/12/05', 398164817, '0768 116 697', 'nhi@yahoo.com', 'Quang Nam',2),
('Le Thanh Liem', '1993/12/05', 598737910, '01884 252 123', 'liem@yahoo.com', 'Tam Ki',1),
('Ngo Thanh Tung', '1994/12/05', 103859277, '0737 153 863', 'tung@yahoo.com', 'Da Nang',4),
('Hoang Dieu My', '1991/12/05', 948209385, '091 514 546', 'my@yahoo.com', 'Quang Tri',3),
('Trinh Yen Nhi', '1992/02/14', 874394813, '012 684 3613', 'nhitrinh@gmail.com', 'Da Nang',5);
-- ---------------------------------------------------------------------------------------------
insert into khach_hang (ho_ten,ngay_sinh,cmnd_khach_hang,sdt,email,dia_chi,id_loai_khach)
values 
('Lê Thanh Tùng', '1989/05/13', 50000000, '0898241303', 'thanhtungspt@gmail.com', 'Thanh Hoa',1);
-- ---------------------------------------------------------------------------------------------
insert into khach_hang (ho_ten,ngay_sinh,cmnd_khach_hang,sdt,email,dia_chi,id_loai_khach)
values 
('Lê Thanh Tùng', '1988/05/13', 555555555, '0968456419', 'tunglt@caodanggtvt2.edu.vn', 'Da Nang',2);
-- ---------------------------------------------------------------------------------------------

-- insert table kieu_thue
insert into kieu_thue (ten_kieu_thue,gia)
values ('Theo gio',100000),
('Theo ngay',2000000),
('Theo tuan',12000000),
('Theo thang',30000000);

-- insert table loai_dich_vu
insert into loai_dich_vu (ten_loai_dich_vu)
values ('Villa'),
('House'),
('Room');

-- insert table loai_khach
insert into loai_khach (ten_loai_khach)
values ('Diamond'),
('Platinium'),
('Gold'),
('Silver'),
('Member');

-- insert table nhan_vien
-- data coppy right Chong Chong
insert into nhan_vien (ho_ten,ngay_sinh,cmnd_nhan_vien,luong,sdt,email,dia_chi,id_vi_tri,id_trinh_do,id_bo_phan)
values 
('Khada Jhin','1980/02/03', 668005001, 15000000, '0913 981 892', 'jhin@gmail.com', 'Canada', 14, 1, 1),
('Ha Xuan Nguyen','1990/12/28', 217791093, 6000000, '0905 361 421', 'nguyen@gmail.com', 'Hue', 3, 2, 2),
('Trinh Xuan Quyet','1996/12/15', 165591551, 9000000, '0165 837 184', 'quyet@gmail.com', 'Quang Tri', 2, 3, 6),
('Doan Sy Khuong','1995/04/05', 131309750, 16000000, '0121 574 104', 'khuong@gmail.com', 'Da nang', 7, 1, 5),
('Nguyen Phu Khoa','1997/08/28', 121931597, 8000000, '0913 796 219', 'khoa@gmail.com', 'Da nang', 6, 3, 3),
('Nguyen Xuan Khoat','1995/01/12', 320781617, 10000000, '0122 927 184', 'khoat@gmail.com', 'Quang Tri', 5, 5, 6),
('Tran Thi Mong Nhu','2001/11/20', 488964520, 5000000, '0913 283 408', 'nhu@gmail.com', 'Ha Noi', 12, 2, 4),
('Truong Dinh Tuan','1999/03/04', 363175234, 8000000, '0163 715 583', 'tuan@gmail.com', 'Lao Cai', 3, 3, 2),
('Pham Thi Thu Trang','1980/07/05', 201701763, 7000000, '0913 425 383', 'trang@gmail.com', 'Nha Trang', 11, 2, 4),
('Doan Huy Hoang', '1995/06/30', 396950312, 8000000, '0913 412 874', 'hoang@gmail.com', 'Da nang', 6, 5, 5),
('Pham Thi Ngoc Thu','1995/02/12', 942199693, 7000000, '0793 180 500', 'thu@gmail.com', 'Ha Noi', 10, 4, 1),
('Truong Ngoc Khanh','1989/06/06', 784193285, 12000000, '0122 672 182', 'khanh@gmail.com', 'Quang Nam', 2, 2, 3),
('Trinh Yen Nhi','2000/09/18', 710578936, 5000000, '0166 945 194', 'nhi@gmail.com', 'Da nang', 8, 4, 2),
('Do Thi Nhu Ngoc','1999/06/01', 707012970, 10000000, '0902 381 608', 'ngoc@gmail.com', 'Nghe An', 5, 3, 3),
('Nguyen Hai Hung','1992/12/20', 315707301, 6000000, '0907 178 107', 'hung@gmail.com', 'Thanh Hoa', 7, 1, 5),
('Phan Ha Nguyen Hai','1995/05/19', 673789501, 5000000, '0713 822 392', 'hai@gmail.com', 'Da Lat', 9, 2, 1),
('Do Thi Hanh Nguyen','1988/08/09', 395839105, 8000000, '0827 802 122', 'nguyen@gmail.com', 'Hai Phong', 2, 4, 2),
('Tran Nhan Tam','1991/02/11', 698284010, 7000000, '0713 822 572', 'tam@gmail.com', 'Bac Giang', 4, 5, 3);
-- ----------------------------------------------------------------------------------------------------------------
insert into nhan_vien (ho_ten,ngay_sinh,cmnd_nhan_vien,luong,sdt,email,dia_chi,id_vi_tri,id_trinh_do,id_bo_phan)
values 
('Le Thanh Tung','1980/02/03', 668005001, 15000000, '0913 981 892', 'tung@gmail.com', 'Da Nang', 14, 1, 1);
-- ----------------------------------------------------------------------------------------------------------------
insert into nhan_vien (ho_ten,ngay_sinh,cmnd_nhan_vien,luong,sdt,email,dia_chi,id_vi_tri,id_trinh_do,id_bo_phan)
values 
('Ngo Thi Anh','1990/02/03', 668005501, 15000000, '0913 981 892', 'anh@gmail.com', 'Da Nang', 14, 1, 1);
-- ----------------------------------------------------------------------------------------------------------------

-- insert table trinh_do
insert into trinh_do (trinh_do)
values ('Dai hoc'),
('Cao dang'),
('Trung cap'),
('Trung hoc pho thong'),
('Lao dong pho thong');

-- insert table vi_tri
insert into vi_tri (ten_vi_tri)
values ('General Director'),
('Housekeeping'),
('Receptionist'),
('Chef'),
('General Accountant'),
('Marketing'),
('Deputy General Manager'),
('Front Office Manager'),
('Laundry'),
('Public Area cleaner'),
('Reservation'),
('Cashier'),
('Cook Assistant'),
('Cash keeper');
