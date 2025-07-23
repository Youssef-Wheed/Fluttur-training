// Question 1
alert("Welcome to my site");
var username = prompt("Enter your name:");
document.writeln("<h1>Welcome: " + username + "<h1>");

document.writeln("<br>");


// Question 2
var num1 = prompt("Enter the first number:");
var num2 = prompt("Enter the second number:");
num1 = parseFloat(num1);
num2 = parseFloat(num2);
document.writeln("<h1>The result is: " + (num1 + num2) + "<h1>");

document.writeln("<br>");


// Question 3
var temp = prompt("Enter today's temperature <with ternary operator>:");
temp = parseFloat(temp);
var result = (temp > 30) ? "Very HOT" : (temp == 30) ? "HOT" : "Cold"; // with ternary operator
document.writeln("<h1> The Temperature is " + result + "<h1>");

// Question 3 with switch
// var temp = prompt("Enter today's temperature <with switch >:");
// temp = parseFloat(temp);

// var condition = (temp > 30) ? "very_hot" :
//     (temp == 30) ? "hot" : "cold";

// switch (condition) {
//     case "very_hot":
//         document.writeln("<h1>The temperature is Very HOT</h1>");
//         break;
//     case "hot":
//         document.writeln("<h1>The temperature is HOT</h1>");
//         break;
//     case "cold":
//         document.writeln("<h1>The temperature is Cold</h1>");
//         break;
//     default:
//         document.writeln("<h1>Invalid input</h1>");
// }