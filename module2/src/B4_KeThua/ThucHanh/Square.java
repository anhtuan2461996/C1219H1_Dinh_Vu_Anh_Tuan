package B4_KeThua.ThucHanh;

public class Square extends Rectangle {
    public Square() {
    }

    public Square(String color, boolean filled, double side) {
        super(color, filled, side,side);
    }

    public Square(double side) {
        super(side,side);
    }
    public double getSide(){
        return getWidth();
    }
    public void setSide(double side){
        setWidth(side);
        setHeight(side);
    }

    @Override
    public void setHeight(double height) {
        super.setHeight(height);
    }

    @Override
    public void setWidth(double width) {
        super.setWidth(width);
    }

    @Override
    public String toString() {
        return "A Square with side="+getSide()+",which is a  subclass of"+super.toString();
    }
}
