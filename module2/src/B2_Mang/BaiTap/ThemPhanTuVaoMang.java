package B2_Mang.BaiTap;

import java.lang.reflect.Array;
import java.util.Scanner;

public class ThemPhanTuVaoMang {
    public static void main(String[] args) {
        int [] arr = new int[10];
        arr[0]=5;
        arr[1]=3;
        arr[2]=9;
        arr[3]=2;
        arr[4]=1;
        Scanner scanner = new Scanner(System.in);
        System.out.println("Nhap phan tu can chen vao: ");
        int chenPhanTu = scanner.nextInt();
        System.out.println("Vi tri chen vao mang: ");
        int index = scanner.nextInt();
        if(index<=1||index>=arr.length-1){
            System.out.println("Khong chen phan tu vao duoc");
        }else {
            for (int i= 0;i<arr.length;i++){
                if(index==i){
                    arr[i+1]=arr[i];
                    arr[index]=chenPhanTu;
                }
            }
            //arr[index] =chenPhanTu;
        }
        for (int i =0;i<arr.length;i++){
            System.out.println(arr[i]);
        }
    }
}
