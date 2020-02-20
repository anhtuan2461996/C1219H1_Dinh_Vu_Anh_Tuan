package B3_OOP.BaiTap.PhuongTrinhBac2;

import java.util.Scanner;

public class QuadraticEquation {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("phuong trinh co dang ax2+bx+c=0");
        System.out.println("nhap cac he so a,b,c: ");
        System.out.println("nhap he so a:");
        double a = scanner.nextDouble();
        System.out.println("nhap he so b:");
        double b = scanner.nextDouble();
        System.out.println("nhap he so c:");
        double c = scanner.nextDouble();
        Account account = new Account(a,b,c);
        if (account.getDiscriminant()<0){
            System.out.println("Phuong Trinh Vo Nghiem");
        }else if (account.getDiscriminant()>0){
            System.out.println("The equation has two roots: " + account.getRoot1()+" and " +account.getRoot2());
        }else {
            System.out.println("The equation has one roots:" +account.getRoot1());
        }
    }
}
