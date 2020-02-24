package B1_NgonNguJava.BaiTap;

import java.util.Scanner;

public class UngDungChuyenDoiTienTe {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhap vao tien USD: ");
        float usd = scanner.nextFloat();
        usd=usd*23000;
        System.out.println("Thanh Tien Viet: "+usd);
    }
}
