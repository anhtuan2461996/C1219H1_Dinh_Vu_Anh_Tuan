package B4_KeThua.BaiTap.Triangle;

import java.util.Scanner;

public class Triangle extends Shape{
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Shape shape = new Shape();
        System.out.println(shape);

        shape = new Shape(2,3,4);
        System.out.println(shape);
    }
}
