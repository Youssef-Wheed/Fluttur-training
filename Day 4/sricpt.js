// 'use strict'
// console.log(document.getElementById('head'))


// var name='marwa';
// var age = 26;
// var phone = '09876512366';

// console.log(name, age, phone);    
// console.log(name, age, phone);
// console.log(name, age, phone);
// console.log(name, age, phone);
// console.log(name, age, phone);


///////// variables
//////// declaration => var x
//////// intilization => x = 4
/////// naming => 4name, &name, user name <= false
///////           _name, $name, name4, username, user_name, userName

// test = 4
// // var test; // hoisting
// // let test

// const x = 6;
// // x=4 // error cant be updated

// console.log(x);


//////////// operators
// console.log(   2 + 4   );
// console.log(   '2' + '4'   ); 
// console.log(   '2' + 4   ); 
// console.log(   'welcome ' + 4 + 1  ); 
// var test= 4 + 1 +' welcome '
// console.log(  typeof( test )   ); 
// console.log(   +'2' + 4    );
// console.log(   -'2' + 4    );
// console.log(   '2' - 4    );
// console.log(   '2' * 4    );
// console.log(   '2' / 4    );

// var x = 0
// x = x + 10 // ==> x += 10
// // x = x + 1 //==> x += 1
// // x++ // increment plus 1
// // x-- // decrement 
// console.log(    ++x    );
// console.log(    x    );



//////////// conditions
// var num = prompt('enter your number')
// console.log(    num > 4     ); // compare values
// console.log(  typeof  num     );
// console.log(    num > '4'     );
// console.log(    num == 4     ); // compare values '4' = 4 // true
// console.log(    num === 4     ); // compare datatype & values '4' = 4 // false
// console.log(    num >= 4     ); 


/////// if statement
var degree = +prompt('enter your number');
// console.log( typeof degree );

if( degree >= 90 || degree <= 100){ // false || true ==> true
    console.log( 'bravo! ' + degree );
}
else if( degree >= 80 ){
    console.log( 'good ' + degree );
}
else if( degree >= 70 ){
    console.log( 'excellent ' + degree );
}
else{
    console.log('fail');
}


// (condition)?true:false ==> ternary
// ( degree >= 90 )? console.log( 'bravo! ' + degree ) : ( degree >= 80 )? console.log( 'good ' + degree ) : ( degree >= 70 )?console.log( 'excellent ' + degree ) : console.log('fail');

// var result = ( degree >= 90 )? 'bravo! ' + degree : ( degree >= 80 )? 'good ' + degree :( degree >= 70 )?'excellent ' + degree :'fail'
// console.log( result );


// switch (degree) {
//     case 90:
//         console.log('bravo! ' + degree);
//         break;
//     case 80:
//         console.log('good ' + degree);
//         break;
//     case 70:
//         console.log( 'excellent ' + degree);
//         break;
//     default:
//         console.log('fail');
// }


// for ( init ==> let i = 0 ;  condition ==> i<5 ; step ==> increment i++ )

// for( let i = 0 ; i < 5 ; i++ )
// {
//     document.writeln('welcome, ', i , '<br>');
// }

// i = 0 ==> i < 5 ==> i = 1
// i = 1 ==> 1 < 5 ==> i = 2
// i = 2 ==> 2 < 5 ==> i = 3
// i = 3 ==> 3 < 5 ==> i = 4
// i = 4 ==> 4 < 5 ==> i = 5

// i = 5 ==> 5 < 5 ==> stop

// for( let i = 5 ; i > 0 ; i--){
//     document.writeln('welcome, ', i , '<br>');

// }

// var x = 0;
// while( x < 4 )
// {
//     document.writeln(x++);
// }

// x = 0 ==> 0 < 4 ==> x = 1 
// x = 1 ==> 1 < 4 ==> x = 2 
// x = 2 ==> 2 < 4 ==> x = 3
// x = 3 ==> 3 < 4 ==> x = 4

// x = 4 ==> 4 < 4 ==> stop

// do{
//     document.writeln('welcome from do ' , '<br>')
//     x++;
// }while(x < 3);

// x = 0 ==> x = 1 ==>
// 1 < 3 => x = 2
// x = 2 ==> 2 < 3 ==> 
// x = 3 ==> 3 < 3 ==> stop



x = 6   // x is not defined ( only init)

console.log(x);
