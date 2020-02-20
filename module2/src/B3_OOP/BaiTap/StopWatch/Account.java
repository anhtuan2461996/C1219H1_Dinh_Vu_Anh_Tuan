package B3_OOP.BaiTap.StopWatch;

import java.awt.datatransfer.DataFlavor;
import java.time.Duration;
import java.time.LocalTime;
import java.util.Date;

public class Account {
    public static void main(String[] args) {
        StopWatch stopWatch = new StopWatch();

        //stopWatch.getStarTime(System.currentTimeMillis());
        //System.out.println(java.time.LocalTime.now());
        //stopWatch.starTime()=System.currentTimeMillis();
//        LocalTime sql = LocalTime.now();
//        System.out.println(sql);
        stopWatch.starTime();
        System.out.println(stopWatch.star());
        for (int i =0;i<100000000;i++){
            i++;
        }
        for (int i =0;i<100000000;i++){
            i++;
        }
        //stopWatch.getElapsedTime();
        System.out.println(stopWatch.getElapsedTime());
//        Duration duration =  Duration.between(stopWatch.get),stopWatch.star());
//        LocalTime hieuSo = stopWatch.star()-stopWatch.getElapsedTime();
        //System.out.println(hieuSo);
    }
}
