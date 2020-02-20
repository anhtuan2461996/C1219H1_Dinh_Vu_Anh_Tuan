package B2_Mang.BaiTap;

import javax.swing.text.StyleContext;
import java.util.Scanner;

public class hoanvi {
    Scanner scanner = new Scanner(System.in);
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        hoanvi SMG = new hoanvi();
        System.out.println("Nhap vao so phan tu: ");
        int phanTu = scanner.nextInt();
        int []mangSoNguyen = new int[phanTu];

        System.out.println("Nhap vao phan tu cho mang: ");
        SMG.addElementSoNguyen(mangSoNguyen);

        //tham tri
//        for (int i =0;i<mangSoNguyen.length-1;i++){
//            swapThamTri(mangSoNguyen[i],mangSoNguyen[i+1]);
//
//        }
//        SMG.showMang(mangSoNguyen);

        //tham chieu
        SMG.swap(mangSoNguyen);
        SMG.showMang(mangSoNguyen);
    }
    public void addElementSoNguyen(int mangsonguyen[]){
        for (int i = 0;i<mangsonguyen.length;i++){
            System.out.println("nhap phan tu thu " +(i+1));
            mangsonguyen[i]=scanner.nextInt();
        }
    }
    public void showMang(int mang[]){
        for (int i=0;i<mang.length;i++){
            System.out.println(mang[i]);
        }
    }
    //tham chieu
    public void swap(int mang[]){
        for (int i =0;i<mang.length-1;i++){
            for (int j=i+1;j<mang.length;j++){
                int temp =mang[i];
                mang[i]=mang[j];
                mang[j] = temp;
            }

        }
    }
    //tham tri
    public static void swapThamTri(int a,int b){
        int temp = a;
        a =b;
        b=temp;
    }
}
