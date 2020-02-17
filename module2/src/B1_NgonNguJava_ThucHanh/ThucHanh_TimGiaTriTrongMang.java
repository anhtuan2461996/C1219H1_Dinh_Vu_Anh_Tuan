package B1_NgonNguJava_ThucHanh;

import java.util.Scanner;

public class ThucHanh_TimGiaTriTrongMang {
    public static void main(String[] args){
        String [] student = {"Christian", "Michael", "Camila", "Sienna", "Tanya", "Connor", "Zachariah", "Mallory", "Zoe", "Emily"};
        Scanner scanner = new Scanner(System.in);
        //System.out.("nhap ten hoc sinh");
        System.out.print("Enter a name’s student:");
        String input_name = scanner.nextLine();
        boolean isExist = false;
        for (int i = 0;i<student.length;i++){
            if (student[i].equals(input_name)){
                System.out.println("Position of the students in the list " + input_name + " is: " + (i + 1));
                isExist = true;
                break;
            }
        }
        if (!isExist){
            System.out.println("Not found "+ input_name + "in the list");
        }
    }

}
