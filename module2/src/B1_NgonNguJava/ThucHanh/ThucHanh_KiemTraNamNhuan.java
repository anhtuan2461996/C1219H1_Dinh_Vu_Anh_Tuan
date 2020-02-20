package B1_NgonNguJava.ThucHanh;

import java.util.Scanner;

public class ThucHanh_KiemTraNamNhuan {
    public static void main(String[] args) {
        boolean check = false;
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter year: ");
        int year = scanner.nextInt();
        if ((year%4==0&&year%100!=0||(year%100==0&&year%400==0))){
            check=true;
        }
//        else if (year%100==0&&year%400==0){
//            check = true;
//        }else if (year%100==0&&year%400!=0){
//            check = false;
//        }
        if (check){
            System.out.println(year + " la nam nhuan.");
        }else {
            System.out.println(year+" khong phai la nam nhuan.");
        }
    }
}
