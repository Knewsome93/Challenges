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

