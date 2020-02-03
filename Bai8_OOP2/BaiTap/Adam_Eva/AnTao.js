let Apple = function () {
    this.weight = 10;
    this.decrease = function () {
        if (this.weight>0){
            this.weight--;
        }
    };
    this.isEmty = function () {
        return false;
    };
    this.getWight =function () {
        return this.weight;
    }
};
let human = function () {
    this.name="";
    this.gender=true;
    this.weight=0;
    this.isMale = function () {
        return this.gender;
    };
    this.setGender =function (gender) {
        this.gender =gender;
    };
    this.checkApple = function (apple) {
        return apple.weight>0;
    };
    this.eat=function (apple) {
        if (this.checkApple(apple)){
            this.weight++;
            apple.decrease();
        }
    };
    this.say = function (say) {
        document.write(say);
    };
    this.getName = function () {
        return this.name;
    };
    this.setName = function (name) {
        this.name=name;
        return this.name;
    };
    this.setWeight =function (weight) {
        this.weight=weight;
        return this.weight;
    };
    this.getWeight = function () {
        return this.weight;
    }
}
    let apple = new Apple();
    document.write(apple.getWight());

    let adam = new human();
    adam.setName("Adam");
    document.write("<br>");
    document.write(adam.getName());
    document.write("<br>");
    adam.setWeight(70);
    adam.getWeight();
    adam.say("Eva muon an tao ko?");
    adam.eat(apple);
    adam.eat(apple);
    adam.eat(apple);
    adam.eat(apple);
    adam.eat(apple);
    document.write("<br>");
    document.write(adam.getWeight());
    document.write("<br>");
    document.write(apple.getWight());
    document.write("<br>");

    let eva= new human();
    eva.setName("eva");
    document.write(eva.getName());
    document.write("<br>");
    eva.setWeight(50);
    eva.getWeight();
    eva.say("Eva uon an tao");
    eva.eat(apple);
    eva.eat(apple);
    eva.eat(apple);
    eva.eat(apple);
    eva.eat(apple);
    eva.eat(apple);

    document.write("<br>");
    document.write(eva.getWeight());
    document.write("<br>");
    document.write(apple.setWeight());
    document.write("<br>");
    document.write(adam.getName());
    adam.say(" Sao Eva an het tao roi");