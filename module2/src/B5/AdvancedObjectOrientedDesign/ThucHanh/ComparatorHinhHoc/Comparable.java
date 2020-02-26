package B5.AdvancedObjectOrientedDesign.ThucHanh.ComparatorHinhHoc;

import B4_KeThua.BaiTap.Circle.Circle;

import java.util.Comparator;

public interface Comparable extends Comparator<Circle> {
    public int compare(Circle c1,Circle c2);
}
