package B5_AdvancedObjectOrientedDesign.BaiTap;

public class Square implements Resizeable {
    private double edg =1.0;

    public Square(double edg) {
        this.edg = edg;
    }

    public Square() {
    }

    public double getEdg() {
        return edg;
    }

    public void setEdg(double edg) {
        this.edg = edg;
    }

    @Override
    public void resize(double percent) {
        this.edg +=this.edg*percent;
    }
}
