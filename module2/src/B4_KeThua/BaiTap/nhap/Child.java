package B4_KeThua.BaiTap.nhap;

//class Parent {
//    public void disp() {
//        System.out.println("Parent disp called");
//    }
//}
//public class Child extends Parent {
//    public void disp() {
//        System.out.println("Parent disp called2");
//    }
//    public void add() {
//        System.out.println("Parent disp called1");
//    }
//    public static void main(String args[]) {
//        //Implicit Casting of a Class Type
//        //We all know that when we are assigning smaller type to a larger typ
//        Parent p = new Child();
//        p.disp();
//
//        ((Child)p).add();
//
//    }
//}
class Parent
{
    public void disp()
    {
        System.out.println("Parent disp called2");
    }
}
public class Child extends Parent
{
    public void disp()
    {
        System.out.println("Child disp called1");
    }
    public static void main(String args[])
    {
        Parent p = new Child();
        p.disp();
        Child c = (Child) p;
        c.disp();
        ((Child)c).disp();
    }
}
