package B5_AdvancedObjectOrientedDesign.BaiTap;

public class ResizeableTest {
    public static void main(String[] args) {
        Circle circle = new Circle();
        Rectangle rectangle= new Rectangle();
        Square square = new Square();

        System.out.println("Gia tri la: ");
        System.out.println("Circle " +circle.getRadius());
        System.out.println("Rectangle " +rectangle.getWidth()+" ,"+ rectangle.getLength());
        System.out.println("Square " +square.getEdg());

        circle.resize(3);
        rectangle.resize(4);
        square.resize(5);

        System.out.println("Gia tri sau la: ");
        System.out.println("Circle " +circle.getRadius());
        System.out.println("Rectangle " +rectangle.getWidth()+" ,"+ rectangle.getLength());
        System.out.println("Square " +square.getEdg());

    }
}
