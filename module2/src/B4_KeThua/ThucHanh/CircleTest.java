package B4_KeThua.ThucHanh;

public class CircleTest {
    public static void main(String[] args) {
        Circle crCircle = new Circle();
        System.out.println(crCircle);

        crCircle = new Circle(3.5);
        System.out.println(crCircle);

        crCircle = new Circle("indo",false,3.5);
        System.out.println(crCircle);
    }
}
