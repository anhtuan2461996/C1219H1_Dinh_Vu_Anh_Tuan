package B3_OOP.BaiTap.Fan;

public class Acount {
    final int SLOW =1;
    final int MEDIUM =2;
    final int FAST  =3;
    private int speed =SLOW;
    public boolean on = false;
    private double radius =5;
    private String color="blue";

    public Acount(int speed, boolean on, double radius, String color) {
        this.speed = speed;
        this.on = on;
        this.radius = radius;
        this.color = color;
    }

    public int getSLOW() {
        return SLOW;
    }

    public int getMEDIUM() {
        return MEDIUM;
    }

    public int getFAST() {
        return FAST;
    }

    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public boolean isOn() {
        return on;
    }

    public void setOn(boolean on) {
        this.on = on;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Acount() {
    }

    @Override
    public String toString() {
        return "Acount{" +
                ", speed=" + speed +
                ", radius=" + radius +
                ", color='" + color +" fan is off " +'\'' +
                '}';
    }
}
