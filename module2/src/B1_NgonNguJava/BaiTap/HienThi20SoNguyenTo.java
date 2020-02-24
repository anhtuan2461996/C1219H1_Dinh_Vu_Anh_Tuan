package B1_NgonNguJava.BaiTap;

import java.sql.SQLOutput;
import java.util.Scanner;

public class HienThi20SoNguyenTo {
    public static void main(String[] args) {
        Scanner scanner= new Scanner(System.in);
        System.out.println("nhap so ban phai kiem tra:");
        int kt = scanner.nextInt();

        //goi ham trong java
        System.out.println(LKSoNguyenTo(kt));
    }
    public void ads(){
        System.out.println("Hello");
    }
    public static int KTSoNguyenTo(int n){
         int kt =1;
         for (int i = 2;i<Math.sqrt(n);i++){
             if (n%i==0&&n>2){
                 kt=0;
             }
         }
         return kt;
    }
    public static String LKSoNguyenTo(int n){
        int i =2;
        int dem =0;
        String ketqua="";
        while (dem<n){
            if (KTSoNguyenTo(i)==1){
                ketqua =ketqua+" "+i;
                dem++;
            }
            i++;
        }
        return ketqua;
    }
}
