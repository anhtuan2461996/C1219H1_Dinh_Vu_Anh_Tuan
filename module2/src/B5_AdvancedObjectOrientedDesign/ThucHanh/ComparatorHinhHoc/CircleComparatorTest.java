package B5_AdvancedObjectOrientedDesign.ThucHanh.ComparatorHinhHoc;

import B4_KeThua.BaiTap.Circle.Circle;

import java.util.Arrays;

public class CircleComparatorTest {
    public static void main(String[] args) {
        Circle[] crCircle = new Circle[3];
        crCircle[0] = new Circle(3.6);
        crCircle[1]= new Circle();
        crCircle[2]= new Circle(3.5,"indigo",false);
        System.out.println("Pre-sorted: ");
//        for (Circle circle : crCircle){
//            System.out.println(circle);
//        }
        for (int i=0;i<crCircle.length;i++){
            System.out.println(crCircle[i]);
        }
        Comparable ciComparable = new CircleComparator();
        //Arrays.sort(crCircle,ciComparable);
        Arrays.sort(crCircle);

        System.out.println("After-sorted:");
        for (int i=0;i<crCircle.length;i++){
            System.out.println(crCircle[i]);
        }
    }
}
