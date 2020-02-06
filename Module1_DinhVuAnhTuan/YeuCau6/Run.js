let listCustomer = [];
let checkEditCustomer = false;
let checkDeleteCustomer = false;
let checkDisplayTotoal = false;
let validateBirthday =/^((0)[1-9]|[1-2][0-9]|(3)[0-1])(\/)((0)[1-9]|((1)[0-2]))(\/)\d{4}$/;
let validateEmail =/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

function displayMainMenu() {
    let choose = prompt(
        "1.Add New Customer" +
        "\n2.Display Information Customer" +
        "\n3.Display Total Play Of Customer" +
        "\n4.Edit Information Customer" +
        "\n5.Delete  customer" +
        "\n6.Exit"
    );
    switch (choose) {
        case "1":
            addNewCustomer();
            break;
        case "2":
            displayCustomer();
            break;
        case "3":
            chooseDisplayTotalPay();
            break;
        case "4":
            chooseCustomerEdit();
            break;
        case "5":
            chooseDeleteCustomer();
            break;
        case "6":
            return;
            break;
        default:
            displayMainMenu();
            break;
    }
}
function addNewCustomer() {
    let checkBirthday = false;
    let checkEmail = false;
    let cus = new Customer();
    //document.write("Hello");
    cus.setNameCustomer(prompt("Nhap vao ho ten cua Customer:"));
    cus.setIdCard(prompt("Nhap vao CMND cua Customer:"));
    do{
        cus.setBirthdayCustomer(prompt("Nhap vao ngay sinh cua Customer (dd/MM/YYYY):"));
        if (validateBirthday.test(cus.getBirthdayCustomer())){
            checkBirthday =true;
        }else {
            alert("Ban da Nhap sai dinh dang.Ban hay nhap lai");
        }
    }while (!checkBirthday);
    do {
        cus.setEmailCustomer(prompt("Nhap vao email cua Customer:"));
        if (validateEmail.test(cus.getEmailCustomer())){
            checkEmail = true;
        }else {
            alert("Ban da Nhap gmail dinh dang.Ban hay nhap lai");
        }
    }while (!checkEmail);

    cus.setAddressCustomer(prompt("Nhap vao dia chi cua Customer:"));
    cus.setTypeCustomer(prompt("Nhap vao loai khach hang cua Customer:"));
    cus.setDiscount(prompt("Nhap vao giam gia cua Customer:"));
    cus.setNumberOfAccompanying(prompt("Nhap vao so nguoi di cung cua Customer:"));
    cus.setTypeRoom(prompt("Nhap vao loai phong cua Customer:"));
    cus.setRentDay(prompt("Nhap vao so ngay o lai cua Customer:"));
    cus.setTypeService(prompt("Nhap vao loai dich vu cua Customer:"));
    listCustomer.push(cus);
    displayMainMenu();
}
    function displayCustomer() {
    let result ="";
    for (let i=0;i<listCustomer.length;i++){
        result +="\n"+ (i+1) + "Name" + listCustomer[i].getNameCustomer()
            +",Id card: " +listCustomer[i].getIdCard();
    }
    result+= "\n"+ (listCustomer.length+1)+ "Back to menu";
    let chooseDisplayInfo = prompt(result);
    if (chooseDisplayInfo.toString() !=(listCustomer.length+1).toString()){
        if (!checkDeleteCustomer && !checkDisplayTotoal){
            displayInformationCustomer(Number.parseInt(chooseDisplayInfo)-1);
        }else if (checkEditCustomer) {
            deleteCustomer(Number.parseInt(chooseDisplayInfo)-1);
        }else {
            displayTotalPay(Number.parseInt(chooseDisplayInfo)-1)
        }
    }else {
        checkDisplayTotoal = false;
        checkDeleteCustomer = false;
        checkEditCustomer = false;
        displayMainMenu();
    }
    }
    function displayInformationCustomer(index) {
        if (checkEditCustomer){
            let chooseInfoEdit = prompt(
                "1.Name: " + listCustomer[index].getNameCustomer() +
                "\n2.Id card :" + listCustomer[index].getIdCard() +
                "\n3.Birth Day:" + listCustomer[index].getBirthdayCustomer() +
                "\n4.Email:" + listCustomer[index].getEmailCustomer() +
                "\n5.Address:" + listCustomer[index].getAddressCustomer() +
                "\n6.Type Customer: " + listCustomer[index].getTypeCustomer() +
                "\n7.Discount: " + listCustomer[index].getDiscount() +
                "\n8.Number of Accomanying:" + listCustomer[index].getNumberOfAccompanying() +
                "\n9.Type Room:" + listCustomer[index].getTypeRoom() +
                "\n10.Rent Day:" + listCustomer[index].getRentDay() +
                "\n11.Type Sivirive" + listCustomer[index].getTypeService() +
                "\n12.Back"
            );
            if (chooseInfoEdit.toString() !== "12"){
                editInformationCustomer(Number.parseInt(chooseInfoEdit)-1);
            }else {
                checkEditCustomer = false;
                displayCustomer();
            }
        }else {
            alert("Information Customer:\n" +
                "1.Name: " + listCustomer[index].getNameCustomer() +
                "\n2.Id card :" + listCustomer[index].getIdCard() +
                "\n3.Birth Day:" + listCustomer[index].getBirthdayCustomer() +
                "\n4.Email:" + listCustomer[index].getEmailCustomer() +
                "\n5.Address:" + listCustomer[index].getAddressCustomer() +
                "\n6.Type Customer: " + listCustomer[index].getTypeCustomer() +
                "\n7.Discount: " + listCustomer[index].getDiscount() +
                "\n8.Number of Accomanying:" + listCustomer[index].getNumberOfAccompanying() +
                "\n9.Type Room:" + listCustomer[index].getTypeRoom() +
                "\n10.Rent Day:" + listCustomer[index].getRentDay() +
                "\n11.Type Sivirive" + listCustomer[index].getTypeService()
            );
        }
    }
    function chooseDisplayTotalPay() {
    checkDisplayTotoal = true;
    displayCustomer();
    }
    function displayTotalPay(index) {
    alert(listCustomer[index].totalpay());
    checkDisplayTotoal = false;
    displayMainMenu();
    }
    function chooseCustomerEdit() {
    checkEditCustomer=true;
    displayCustomer();
    }
function editInformationCustomer(index) {
    let editInfo =prompt("nhap vao gia tri ban muon:");
    switch (index) {
        case "0":
            listCustomer[index].setNameCustomer(editInfo);
            break;
        case "1":
            listCustomer[index].setIdCard(editInfo);
            break;
        case "2":
            listCustomer[index].setBirthdayCustomer(editInfo);
            break;
        case "3":
            listCustomer[index].setEmailCustomer(editInfo);
            break;
        case "4":
            listCustomer[index].setAddressCustomer(editInfo);
            break;
        case "5":
            listCustomer[index].setTypeCustomer(editInfo);
            break;
        case "6":
            listCustomer[index].setDiscount(editInfo);
            break;
        case "7":
            listCustomer[index].setNumberOfAccompanying(editInfo);
            break;
        case "8":
            listCustomer[index].setTypeCustomer(editInfo);
            break;
        case "9":
            listCustomer[index].setRentDay(editInfo);
            break;
        case "10":
            listCustomer[index].setTypeService(editInfo);
            break;
        // default:
        //     alert("fail");
        //     return;
    }
    checkEditCustomer = false;
    displayMainMenu();
}

function chooseDeleteCustomer() {
    checkDeleteCustomer = true;
    displayCustomer();
}
function deleteCustomer(index) {
    let chooseConfirm = prompt(
        "Ban muon xoa khach hang: " + listCustomer[index].getNameCustomer()+
        "\n,Id Card: "+ listCustomer[index].getIdCard()+
        "\n1.Yes\n 2.No"
    );
    if (chooseConfirm === "1"){
        listCustomer.splice(index,1);
        alert("Ban da xoa thanh cong");
    }
    checkDeleteCustomer = false;
    displayMainMenu();
}

displayMainMenu();