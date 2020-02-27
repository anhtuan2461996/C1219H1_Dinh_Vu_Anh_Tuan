package B5_AdvancedObjectOrientedDesign.ThucHanh.ComparatorHinhHoc;

import B4_KeThua.BaiTap.Circle.Circle;

public class CircleComparator implements Comparable {
    @Override
    public int compare(Circle c1,Circle c2) {
        if (c1.getRadius()>c2.getRadius()){
            return 1;
        }else if (c1.getRadius()<c2.getRadius()){
            return -1;
        }else {
            return 0;
        }

    }
}
