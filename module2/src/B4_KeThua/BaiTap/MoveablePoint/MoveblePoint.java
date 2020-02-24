package B4_KeThua.BaiTap.MoveablePoint;

public class MoveblePoint extends Point{
    private float xSpeed =1.0f;
    private float ySpeed =1.0f;

    public MoveblePoint() {
    }

    public MoveblePoint(float xSpeed, float ySpeed) {
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
    }

    public MoveblePoint(float x, float y, float xSpeed, float ySpeed) {
        super(x, y);
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
    }

    public float getxSpeed() {
        return xSpeed;
    }

    public void setxSpeed(float xSpeed) {
        this.xSpeed = xSpeed;
    }

    public float getySpeed() {
        return ySpeed;
    }

    public void setySpeed(float ySpeed) {
        this.ySpeed = ySpeed;
    }
    public void setSpeed(float xSpeed,float ySpeed){
        this.xSpeed=xSpeed;
        this.ySpeed=ySpeed;
    }
    public float[] getSeed(){
        float[]arr ={this.xSpeed,this.ySpeed};
        return arr;
    }

    @Override
    public String toString() {
        float[]arr = getSeed();
        return super.toString()+
                ","+"("+arr[0]+","+arr[1]+")";
    }
    public float[] move(){
        super.setXY(getX()+xSpeed,getY()+ySpeed);
        return getXY();
    }
}
