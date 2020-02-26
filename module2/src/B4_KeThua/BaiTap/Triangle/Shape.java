package B4_KeThua.BaiTap.Triangle;

public class Shape {
    public double silde1=1.0;
    public double silde2=1.0;
    public double silde3=1.0;

    public Shape() {
    }

    public Shape(double silde1, double silde2, double silde3) {
        this.silde1 = silde1;
        this.silde2 = silde2;
        this.silde3 = silde3;
    }

    public double getSilde1() {
        return silde1;
    }

    public void setSilde1(double silde1) {
        this.silde1 = silde1;
    }

    public double getSilde2() {
        return silde2;
    }

    public void setSilde2(double silde2) {
        this.silde2 = silde2;
    }

    public double getSilde3() {
        return silde3;
    }

    public void setSilde3(double silde3) {
        this.silde3 = silde3;
    }
    public double getArea(){
        double s =Math.sqrt(getPerimeter()*(getPerimeter()-silde1)*(getPerimeter()-silde2)*(getPerimeter()-silde3));
        return s;
    }
    public double getPerimeter(){
        double silde = silde1+silde2+silde3;
        return silde;
    }

    @Override
    public String toString() {
        return "Shape{" +
                "silde1=" + silde1 +
                ", silde2=" + silde2 +
                ", silde3=" + silde3 +
                ", getArea=" + getArea() +
                ", getPerimeter=" + getPerimeter() +
                '}';
    }
}
