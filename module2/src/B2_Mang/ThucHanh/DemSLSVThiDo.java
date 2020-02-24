package B2_Mang.ThucHanh;

import java.util.Scanner;

public class DemSLSVThiDo {
    public static void main(String[] args) {
        int size;
        int []arr;
        Scanner scanner = new Scanner(System.in);
        do {
            System.out.println("Nhap vao size: ");
            size = scanner.nextInt();
            if (size>30){
                System.out.println("Ban nhap vao gia tri lon hon 30:");
            }
        }while (size<30);
        //nhap vao gia tri mang
        arr = new int[size];
        int i=0;
        while (i<arr.length){
            System.out.println("Nhap vao sinh vien "+(i+1)+": ");
            arr[i]=scanner.nextInt();
            i++;
        }
        //su dung vong lap de, dem thanh vien thi do
        //for ()
    }
}
