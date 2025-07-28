///////////////// built-in functions
// var x = +'123bnm'
// console.log(x); // NaN => not a number
// console.log( typeof x );

// console.log(   parseInt('marwa')   ); // NaN
// console.log(  typeof parseInt('123')   ); // 123 => number
// console.log(  parseInt('123mmm')   ); // 123 => number
// console.log(  parseInt('123 778')   ); // 123 => number
// console.log(  parseInt('123.778')   ); // 123 => number
// console.log(  parseInt('m1234')   ); // NaN

// console.log(  parseFloat('123.778')   ); // 123.778 => number

// console.log(  Number('1234')   ); // 1234
// console.log(  Number('1234m')   ); // NaN
// console.log(  Number('1234 8')   ); // NaN
// console.log(  Number('1234.8')   ); // 1234.8
// console.log(  Number('m1234')   ); // NaN

// console.log(   isNaN('44')   ); // isString => false
// console.log(   isNaN('marwa')   ); // true
// console.log(   isNaN('123marwa')   ); // true
// console.log(   isNaN('mm123marwa')   ); // true

// console.log(   isFinite('12.3')   ); // true
// console.log(   isFinite('123')   ); // true
// console.log(   isFinite('123m')   ); // false
// console.log(   isFinite('123 9')   ); // false


// var y = prompt('enter your expression')
// console.log(    eval(y) );



/////////////////// user-Defined function
///////// declaration function
// function name(parameters){functionality}
// var testFun = test('marwa')

// function test(name = 'user') { // defualt value
//     // console.log('welcome, ', name);
//     return 'welcome, ' + name;
// }

// // call function => num(arguments)
// // test('marwa')
// console.log(testFun);


// ////////// expression function
// var fun = function (x, y = 0){
//     console.log(  x + y  );
// }

// fun(2)

/////////// arrow function
// var x = ()=>{
//     return 4
// }
// var x = ()=>4
// var result = x()
// console.log(result);
// var fun = ()=>{
//     var y = 3 // local scope
//     console.log(y);
//     console.log(x);

// }
// var x = 4 // global scope
// // console.log(y);
// // console.log(x);

// fun()

// function name() {
//     x=5 // => var => local
// }
// console.log(x);

// for (let index = 0; index < 4; index++) { // local


// }
// console.log(index); // not defined


////////// BOM

var win // global
// function openWin(){
//     win = open('https://www.w3schools.com/html/html_images.asp','_blank','width=200,height=200, top=200,left=600')
// }

// function openWin() {
//     setTimeout(() => { win = open('https://www.w3schools.com/html/html_images.asp', '_blank', 'width=200,height=200, top=200,left=600') }, 4000)
// }

// function closeWin() {
//     // window.close()
//     win.close()
// }

// setTimeout(     fun   ,    time     );
// setTimeout(     openWin       , 4000   );
// var interval
// function intcount() {
//     var x = 1
//      interval = setInterval(() => {
//         console.log(x++)
//     }, 3000);
// }

// function stopcount() {
//     clearInterval(interval)
// }


// ////////////// screen object
// console.log(  screen.availHeight  );
// console.log(  screen.width  );


///////////// navigator object
// navigator.geolocation.getCurrentPosition(funLoc) //==> call funLoc

// function funLoc(location) {
//     console.log(location);
//     var x = location.coords.latitude
//     var y = location.coords.longitude
//     open(`https://www.google.com/maps?q=${x},${y}`)

// }


////// object 
// var obj = {
//     key: value
// }

var obj = {
    id: 123,
    name: 'marwa',
    courses: ['html', 'css', 'js'],
    address: {
        city: 'minia',
        street: 'huda'
    }
}
// console.log(obj);
// console.log(obj.name);
// console.log(obj['name']);
// console.log(obj.courses[0]);
// console.log(obj.address.city);
// console.log(obj['address']['city']);

var instructors = [
    {
        id: 123,
        name: 'marwa',
        courses: ['html', 'css', 'js'],
        address: {
            city: 'minia',
            street: 'huda'
        }
    },
    {
        id: 123,
        name: 'rana',
        courses: ['html', 'css', 'js'],
        address: {
            city: 'minia',
            street: 'huda'
        }
    }
]

for (let index = 0; index < instructors.length; index++) {
   
    console.log(instructors[index].name);
    
}