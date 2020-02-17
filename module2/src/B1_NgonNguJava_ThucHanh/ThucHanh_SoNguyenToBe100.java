package B1_NgonNguJava_ThucHanh;

public class ThucHanh_SoNguyenToBe100 {
    public static void main(String[] args) {
        for (int i = 2;i<100;i++){
            int dem =0;
            for (int j=2;j<i;j++){
                if (i%j==0){
                    dem+=1;
                }
            }
            if (dem<1){
                System.out.println(i);
            }
        }
    }
}
