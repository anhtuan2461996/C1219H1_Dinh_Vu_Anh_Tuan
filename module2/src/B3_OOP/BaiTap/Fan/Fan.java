package B3_OOP.BaiTap.Fan;

public class Fan extends Acount {
    public static void main(String[] args) {
        Acount fan1 = new Acount(1,true,10,"yellow");
        Acount fan2 = new Acount(2,false,5,"blue");
        System.out.println(fan1);
        System.out.println(fan2);
    }
}
