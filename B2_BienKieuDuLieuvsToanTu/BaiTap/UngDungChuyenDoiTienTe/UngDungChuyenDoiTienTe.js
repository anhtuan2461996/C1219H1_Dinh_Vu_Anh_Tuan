function DoiTien() {
    let a = document.getElementById("valueMoney");
    // chuyen kieu string sang number
    //let b = document.getElementById('result');
    //b.value*1;
    let money1 = document.getElementById("money1");
    let money2 = document.getElementById("money2");
    //let result = document.getElementById(result);

    if (money1.value === money2.value) {
        result.value = parseInt(a.value);
        alert('Gia tri sau chuyen doi ' + result.value);

    } else if (money1.value === "USD") {
        result.value =parseInt(a.value)* 23000;
        alert('Gia tri sau chuyen doi ' + result.value);
    }else {
        result.value = parseInt(a.value)/23000;
        alert('Gia tri sau chuyen doi ' + result.value);
    }
}