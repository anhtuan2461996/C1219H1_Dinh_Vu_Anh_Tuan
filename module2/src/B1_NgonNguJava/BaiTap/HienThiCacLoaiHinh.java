package B1_NgonNguJava.BaiTap;

import java.util.Scanner;

public class HienThiCacLoaiHinh {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhap vao so chieu dai:");
        int dai= scanner.nextInt();
        System.out.println("nhap vao so chieu rong:");
        int rong = scanner.nextInt();
        //hinh chu nhat
        for (int i= 0;i<rong;i++){
            for (int j = i;j<dai;j++){
                System.out.println("*");
            }
            System.out.println("*");
        }
    }
}
