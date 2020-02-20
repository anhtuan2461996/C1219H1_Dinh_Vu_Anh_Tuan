package B3_OOP.ThucHanh;

import java.util.Scanner;

public class Ex14_1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the width:");
        double wight = scanner.nextDouble();
        System.out.println("Enter the height:");
        double height = scanner.nextDouble();
        Rectangle rectangle = new Rectangle(wight,height);
        System.out.println("Your Rectangle "+ rectangle.display());
        System.out.println("Perimeter of the Rectangle:" + rectangle.getPerimeter());
        System.out.println("Area of the Rectangle:"+ rectangle.getArea());
    }
}
