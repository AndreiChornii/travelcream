`use strict`;

//let form = document.querySelector('#form_wrapper form');
////console.log(form);
//let buttom_send = form[3];
//console.log(buttom_send);
//buttom_send.prev

function sendedData(form){
//    let form = document.querySelector('#form_wrapper form');
//    console.log(form);
    let from = form[0].value;
    let to = form[1].value;
    let date = form[2].value;
    console.log(from);
    console.log(to);
    console.log(date);
    alert('you mentioned\nleaving from: ' + from + '\nwhant to go: ' + to + '\ndate: ' + date);
}