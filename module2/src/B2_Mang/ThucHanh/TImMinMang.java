package B2_Mang.ThucHanh;

public class TImMinMang {
    public static void main(String[] args) {
        int []arr = {4,12,15,9,1,6,34,2};
        int index =minValue(arr);
        System.out.println("The smallest element in the array is: " +arr[index] );
    }
    public static int minValue(int []arr){
        int min= arr[0];
        int index=0;
        for (int i =1;i<arr.length;i++){
            if (arr[i]<min){
                min=arr[i];
                index=i;
            }
        }
        return index;
    }
}
