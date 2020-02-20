package B1_NgonNguJava.ThucHanh;

import java.util.Scanner;

public class ThucHanh_TinhChiSoCoThe {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Your weight (in kilogram)");
        double weight = scanner.nextDouble();
        System.out.println("Your height (in meter)");
        double height = scanner.nextDouble();

        double bmi = weight/Math.pow(height,2);
        System.out.println("%-20s%s"+ " bmi "+ "Interpretation\n");
        if (bmi<18){
            System.out.println("%-20.2f%s "+ bmi+ " Underweight");
        }else if (bmi<25){
            System.out.println("%-20.2f%s "+ bmi+ " Normal");
        }else if (bmi<30){
            System.out.println("%-20.2f%s "+ bmi+ " OverWeight");
        }else {
            System.out.println("%-20.2f%s "+ bmi+ " Obese");
        }
    }
}
