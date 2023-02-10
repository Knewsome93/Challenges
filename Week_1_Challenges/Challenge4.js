let myList=[];
function add(a){
myList.push(a);
}
add(12);
add(15);
printAlert();
function printAlert(){
    console.log(myList);
    return alert(myList);
}

let theButton = document.querySelector("#THEButton");
theButton.addEventListener("click",printAlert);

let enterBtn = document.querySelector("#entered");
let userInput = document.getElementById("THEInput");
enterBtn.addEventListener("click",addUserInput);

function addUserInput(){
let newInput = userInput.value;
add(newInput);
userInput.value="";
}

