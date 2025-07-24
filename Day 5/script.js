//////////////// math object

/// property
// console.log(    Math.PI     );
// /// method
// console.log(    Math.abs(-111)  ); //|-111| = 111
// // 10.5 => 11  ,  2.4 => 2  , 9.1 => 9  ,  5.9 => 6
// console.log(    Math.round(5.9) ); 
// console.log(    Math.ceil(9.1) ); // => 10 
// console.log(    Math.floor(5.9) ); // => 5

// console.log(    Math.sqrt(16) ); // => 4
// console.log(    Math.pow(2,3) ); // => 8
// console.log(            2**3  ); // => 8
// console.log(    Math.min(4,7,2,9,5,1,3,6) ); // 1
// console.log(    Math.max(4,7,2,9,5,1,3,6) ); // 9

// console.log(    Math.random() ); // 0 => 1
// var x = Math.random()*100
// console.log(    Math.round(x) ); // 0 => 100

// console.log(    Math.sign(1400) ); // 1 => +
// console.log(    Math.sign(-1400) ); // -1 => -
// console.log(    Math.sign(0) ); // 0


/////////// string object
var uname = 'marwa mohamed'
//           0123456789 => 12 ==> 0-based index
// console.log(    uname[0]    ); // index 0
// console.log(    uname[11]    ); // index 0
// // uname[4]='A'
// console.log(    uname    ); //
// console.log(    uname.length    ); //
// console.log(    uname[uname.length]    ); // undefined
// console.log(    uname[uname.length-1]    ); // d
// console.log(    uname.charAt(7)    ); // o
// console.log(    uname.charAt()    ); // m => first value in index 0 => uname.charAt(0)
// console.log(    uname.charAt(-1)    ); // empty string
// console.log(    uname[-1]    ); // undefined
// console.log(    uname.charCodeAt(7)    ); // o => 111
// console.log(    uname.charCodeAt()    ); // m => 109

// console.log(    uname.indexOf('w')    ); // 3
// console.log(    uname.indexOf('h')    ); // 8
// console.log(    uname.indexOf('m')    ); // 0 first value 
// console.log(    uname.indexOf('m', 6)    ); // start searching from index 6 => result = 6 ( left to right )
// console.log(    uname.indexOf('mohamed')    ); // 6
// console.log(    uname.indexOf('mohamd')    ); // -1
// console.log(    uname.indexOf('moham')    ); // 6
// console.log(    uname.lastIndexOf('m')    ); // 10
// console.log(    uname.lastIndexOf('m',8)    ); // 6 => start searching from last index 8 ( right to left ) 

// console.log(    uname.replace('m','M')    ); // Marwa mohamed
// console.log(    uname.replaceAll('m','M')    ); // Marwa MohaMed
// console.log(    uname.replaceAll('marwa','shaza')    ); // shaza mohamed
// console.log(    uname.replaceAll(' ',' & ')    ); // marwa & mohamed

// console.log(    uname.toUpperCase()     ); // MARWA MOHAMED
// console.log(    uname.toLowerCase()     ); // marwa mohamed

// console.log(    uname.substring()     ); // marwa mohamed => uname.substring(0,13)
// console.log(    uname.substring(6)     ); // mohamed
// console.log(    uname.substring(6, 13)     ); // mohamed
// console.log(    uname.substring(-4)     ); // -4 ==> 0

var uname = '     marwa mohamed      '
///              987654321
// console.log(    uname.slice()     ); // marwa mohamed => uname.slice(0,13)
// console.log(    uname.slice(0,5)     ); // marwa
// console.log(    uname.slice(-7)     ); // mohamed
// console.log(    uname.slice(-7,-11)     ); // wrong first must greater than second value
// console.log(    uname.slice(-7,-1)     ); // mohame

// console.log(    'marwa' + 2 + 4   ); // marwa24
// console.log(    'marwa' , 2 + 4   ); // marwa 6
// console.log(    uname.concat(' abd ', 'elmohsen ',',', 4, 23)  ); // marwa mohamed abd elmohsen ,423
// console.log(    uname.split('a')   );
// console.log(    uname.length    );
// console.log(    uname.trim()    );
// uname = uname.trim() 
// console.log(    uname.length    );



///////////////// array object
// course1 = 'html'
// course2 = 'css'
// course3 = 'js'

var arr = ['html', 'css', 'js', 23, 9]
//////////   0   ,  1  , 2  , 3 , 4
// arr[0] ==> 'html'
// arr.length ==> 5
// for(let i = 0 ; i < arr.length ; i++){
//     console.log(arr[i]);
// }

// arr[10]='HTML'
// for(let i = 0 ; i < arr.length ; i++){
//     console.log(arr[i]);
// }

// arr.push('firebase') // insert in the end
// arr.unshift('intro','test1') // insert in the start
// // console.log(    arr.pop()   );
// // console.log(    arr.shift()   );

// // console.log(      arr.splice(1,1)      ); // splice ( start index , count )
// console.log(      arr.splice(1,0,['html5','css3', 6])      ); // 
// [ 'intro' , ['html5','css3', 6] , 'test1' , 'html' , 'css' , 'js' , 23, 9 , 'firebase' ]
//      0   ,          1          ,     2   ,   3    ,   4   ,   5  , 6 , 7 ,      8    
//                0   ,  1  ,  2


// console.log(arr[1][2]); // 6
// console.log(arr[0][2]); // t

// console.log(    arr.sort()  );
// console.log(    arr.reverse()  );
// console.log(    arr.toString()  );
// console.log(    arr.join(' ==> ')  );
// var num = 5;
// console.log(  typeof  num.toString()  );
// console.log(  typeof  5..toString()  );
// console.log(  typeof  (5).toString()  );



/////////// date object

// var dateNow = new Date(); /// current date and time
// document.writeln(   dateNow     , '<br>')
// document.writeln(   dateNow.getDate()   , '<br>') // 24 
// // [ 'sun' , 'mon , 'tues' , 'wed' , 'thu' , 'fri' , 'sat' ]
// //     0   ,   1  ,   2    ,  3    ,  4    ,  5    ,   6 
// document.writeln(   dateNow.getDay()   , '<br>') // 4 ==> thu
// document.writeln(   dateNow.getMonth()  , '<br>') // 6 ==> july (7)
// document.writeln(   dateNow.getFullYear()  , '<br>') // 2025
// document.writeln(   dateNow.toLocaleString()  , '<br>') // 7/24/2025, 12:05:23 PM
// document.writeln(   dateNow.toLocaleTimeString()  , '<br>') // 12:05:23 PM
// document.writeln(   dateNow.toTimeString()  , '<br>') // 12:06:19 GMT+0300 (Eastern European Summer Time)
// document.writeln(   dateNow.toDateString()  , '<br>') // Thu Jul 24 2025
// document.writeln(   dateNow.toLocaleDateString()  , '<br>') // 7/24/2025
// document.writeln(   '<br>') //  
// document.writeln(   '<br>') //  

// // dateNow.setDate(100)
// dateNow.setMonth(7) // ==> Aug(8)
// dateNow.setHours(2) // ==> Aug(8)
// document.writeln(   dateNow  , '<br>') //  


// var date = new Date(2025, 6, 24, 12, 20, 40)

// try{

// var date = new date('2025-07-02')
// document.writeln(   date  , '<br>') // 

// }
// catch(e){
//     console.log(e.message);
// }

var num = +prompt('enter number from 0 to 10')
try {

    if (num < 0 || num > 10) {
        throw 'error, enter valid number'
    }
    else{
        throw 'bravo!'
    }

}
catch (e) {
    console.log(e);
}
finally {
    document.writeln('hello day 2 js')
}

// document.writeln('hello')






























