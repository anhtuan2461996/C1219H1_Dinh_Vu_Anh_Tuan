function Hero(top,left) {
    //this.image=image;
    this.top=top;
    this.left=left;

    // this.getHero =function () {
    //     return pikapika;
    // };
    this.moveRight =function () {
        this.left =this.left+20+"px";
        console.log("ok: "+this.left);
    };
}
let hero = new Hero(20,30);
window.onload =start();
function start() {
    hero = document.getElementById("pikapika");
    hero.style.position ="relative";
    hero.style.left= "0px";
    // if (hero.left<window.innerWidth){
    //     hero.moveRight();
    // }
    // document.getElementById("game").innerHTML = hero.getHero();
    // setTimeout(start,500)
}
