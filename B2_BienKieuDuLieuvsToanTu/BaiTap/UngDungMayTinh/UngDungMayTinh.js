function addition() {
    let multip1 = document.getElementById("multip1");
    let multip2 = document.getElementById("multip2");

    let total = parseInt(multip1.value)+parseInt(multip2.value);
    alert("Tinh Tong : " + parseInt(total));
}
function subtra() {
    let multip1 = document.getElementById("multip1");
    let multip2 = document.getElementById("multip2");

    let sub = parseInt(multip1.value)-parseInt(multip2.value);
    alert("Tinh Tru:" + parseInt(sub));
}
function multip() {
    let multip1 = document.getElementById("multip1");
    let multip2 = document.getElementById("multip2");

    let mult =parseInt(multip1.value)*parseInt(multip2.value);
    alert("Tinh nhan: "+parseInt(mult));
}
function division() {
    let multip1 = document.getElementById("multip1");
    let multip2 = document.getElementById("multip2");

    if (multip2.value==='0'){
        alert("Ban Nhap sai . Ban vui nhap chia lai.");
    }else {
        let divi = parseInt(multip1.value)/parseInt(multip2.value);
        alert("Tinh Chia " +parseInt(divi))
    }
}