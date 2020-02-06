let hero = new Hero(20);

function Hero(left) {
    //this.image=image;
    //this.top=top;
    this.url1 = document.getElementById("pikapika");
    this.url1.style.left = this.speed + "px";
    this.speed = left;

    this.moveRight = function () {
        this.speed += 100;
        this.url1 = document.getElementById("pikapika");
        this.url1.style.left = this.speed + "px";
        console.log(this.speed);
    };
}

function abc() {
    hero.moveRight();
}

// let hero = new Hero(20,30);
// hero.moveRight();
// window.onload =start();
// function start() {

// if (hero.left<window.innerWidth){
//     hero.moveRight();
// }
// document.getElementById("game").innerHTML = hero.getHero();
// setTimeout(start,500)
// }
