package B6_GiaiThuat.ThucHanh.List;

import java.util.Arrays;

public class MyList <E> {
    private int size =0;
    private static final int DEFAULT_CAPACITY =10;
    private Object elements[];

    public MyList() {
        elements = new Object[DEFAULT_CAPACITY];
    }

    private void ensurCapa(){
        int newSize = elements.length*2;
        elements= Arrays.copyOf(elements, newSize);
    }

    public void add(E e) {
        if (size == elements.length) {
            ensurCapa();
        }
        elements[size++] = e;
    }
    public E get(int i){
        if (i<0){
            throw new IndexOutOfBoundsException("Index:" +i+", size " +i);
        }
        return (E) elements[i];
    }
}
