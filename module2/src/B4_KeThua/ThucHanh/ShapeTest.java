package B4_KeThua.ThucHanh;

public class ShapeTest {
    public static void main(String[] args) {
        Shape shape = new Shape();
        System.out.println(shape);

        shape = new Shape("red",false);
        System.out.println(shape);

        shape = new Shape("123",true);
        System.out.println(shape);
    }
}
