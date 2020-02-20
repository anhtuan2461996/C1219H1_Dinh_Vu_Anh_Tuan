package B3_OOP.BaiTap.StopWatch;

import java.time.LocalTime;
import java.util.Date;

public class StopWatch {
    private Date starTime,endTime;
    public StopWatch(){}
    public StopWatch(Date starTime,Date endTime){
        this.starTime=starTime;
        this.endTime=endTime;
    }
//    public LocalTime starTime(){
//        //starTime = java.time.LocalTime.now();
//        LocalTime starTime = LocalTime.now();
//        return starTime;
//    }
    public LocalTime star(){
        //starTime = java.time.LocalTime.now();
        LocalTime starTime = LocalTime.now();
        return starTime;
    }
//    public long star(){
//        //starTime = java.time.LocalTime.now();
//        long starTime = System.currentTimeMillis();
//        return starTime;
//    }
    public LocalTime getElapsedTime(){
        LocalTime endTime = LocalTime.now();
        return endTime;
    }
//    public long getElapsedTime(){
//        long endTime = System.currentTimeMillis();
//        return endTime;
//    }

    public Date getStarTime(){
        return this.starTime;
    }
    public Date getEndTime(){
        return this.endTime;
    }
}
