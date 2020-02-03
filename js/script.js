`use strict`;

function sendedData(form){

    let from = form[0].value;
    let to = form[1].value;
    let date = form[2].value;
    console.log(from);
    console.log(to);
    console.log(date);
    alert('you mentioned\nleaving from: ' + from + '\nwhant to go: ' + to + '\ndate: ' + date);
}