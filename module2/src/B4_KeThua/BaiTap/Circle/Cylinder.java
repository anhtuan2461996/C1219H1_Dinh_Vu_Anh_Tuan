package B4_KeThua.BaiTap.Circle;

public class Cylinder extends Circle{
    private double height =4;

    public Cylinder() {
    }

    public Cylinder(int radius, String color, double height) {
        super(radius, color);
        this.height = height;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }
    public double getArea(){
        return 2*Math.PI*getRadius()*(getHeight()+getRadius());
    }

    @Override
    public String toString() {
        return "Cylinder{" +
                " height= " + height +
                ", radius= " +getRadius()+
                ", getArea= "+getArea()+'}';
    }
}
