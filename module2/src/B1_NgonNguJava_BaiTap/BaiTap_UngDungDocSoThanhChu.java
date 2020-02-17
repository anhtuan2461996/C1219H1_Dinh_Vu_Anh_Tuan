package B1_NgonNguJava_BaiTap;

import java.util.Scanner;

public class BaiTap_UngDungDocSoThanhChu {
    public static void main(String[] args) {

        int c,s,k;
        String S = "";
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter number: ");
        int number = scanner.nextInt();
        if (number>0&&number<10){

        }else if (number>9&&number<99){
            s = number %10;
            k = number/10;
            //S= hangChuc(k)+docSo(s);
            hangChuc(k);
            docSo(s);
        }else if (number>99&&number<1000){
            c = number/100;
            k = (number%100)/10;
            s = number%10;
            hangTram(c);
            hangChuc(k);
            docSo(s);
        }

    }
    public static void docSo(int so){
        switch (so){
            case 1:
                System.out.println("mot");
                break;
            case 2:
                System.out.println("hai");
                break;
            case 3:
                System.out.println("ba");
                break;
            case 4:
                System.out.println("bon");
                break;
            case 5:
                System.out.println("nam");
                break;
            case 6:
                System.out.println("sau");
                break;
            case 7:
                System.out.println("bay");
                break;
            case 8:
                System.out.println("tam");
                break;
            case 9:
                System.out.println("chin");
                break;
        }
    }
    public static void hangChuc(int so){
        switch (so){
            case 1:
                System.out.println("muoi");
                break;
            case 2:
                System.out.println("hai muoi");
                break;
            case 3:
                System.out.println("ba muoi");
                break;
            case 4:
                System.out.println("bon muoi");
                break;
            case 5:
                System.out.println("nam muoi");
                break;
            case 6:
                System.out.println("sau muoi");
                break;
            case 7:
                System.out.println("bay muoi");
                break;
            case 8:
                System.out.println("tam muoi");
                break;
            case 9:
                System.out.println("chin muoi");
                break;
        }
    }
    public static void hangTram(int so){
        switch (so){
            case 1:
                System.out.println("mot tram");
                break;
            case 2:
                System.out.println("hai tram");
                break;
            case 3:
                System.out.println("ba tram");
                break;
            case 4:
                System.out.println("bon tram");
                break;
            case 5:
                System.out.println("nam tram");
                break;
            case 6:
                System.out.println("sau tram");
                break;
            case 7:
                System.out.println("bay tram");
                break;
            case 8:
                System.out.println("tam tram");
                break;
            case 9:
                System.out.println("chin tram");
                break;
        }
    }
}
