package B5.AdvancedObjectOrientedDesign.ThucHanh.AnimalvsInterfaceEdible;


public class AbstractAndInterfaceTests {
    public static void main(String[] args) {
        Animal[] animal = new Animal[2];
        animal[0] = new Tiger();
        animal[1] = new Chicken();

//        for (Animal animal1 : animal){
//            System.out.println(animal1.makeSound());
//        }
        for (int i = 0;i<animal.length;i++){
            System.out.println(animal[i].makeSound());
            if (animal[i] instanceof Chicken){
                Edible edible = (Chicken)animal[i];
                System.out.println(edible.howtoEat());
            }
        }
        Fruit[] fruit = new Fruit [2];
        fruit [0] = new Orange();
        fruit[1]=new Apple();
        for (int i = 0;i<fruit.length;i++){
            System.out.println(fruit[i].howtoEat());
        }

    }
}
