package B6_GiaiThuat.BaiTap.ArrayList;

import java.util.Objects;

public class MyList <E>{
    private int size =0;
    private static final int DEAFAULT_CAPACITY =10;
    private Objects element[];

    public MyList() {
        element = new Objects[DEAFAULT_CAPACITY];
    }

    public MyList(int capacity) {

    }

    public void  add(int index,E element){

    }
//    public E remove (int index){
//        return "1";
//    }
    public int size(){
        return 0;
    }
//    public E clone(){
//
//    };
    public boolean contains(E o){
        return true;
    };
    public int indexOf(E o){
        return 0;
    }
    public boolean add(E e){
        return false;
    }
    public void ensureCapacity(int minCapacity){

    }
//    public E get(int i){
//
//    }
    public void clear(){

    }
}
