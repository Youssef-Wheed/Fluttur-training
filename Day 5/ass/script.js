var arr = [
    "Always use 'let' or 'const' instead of 'var'.",
    "Use === instead of == to avoid type coercion.",
    "Use 'const' for variables that never change.",
    "Debug with console.log() frequently.",
    "Functions are first-class citizens in JS.",
    "Arrays start from index 0, not 1.",
    "Use 'slice' to copy arrays safely.",
    "Avoid using global variables.",
    "JavaScript is case sensitive.",
    "Use 'strict mode' for safer code."
];


var randomIndex = Math.floor(Math.random() * arr.length);
var randomTip = arr[randomIndex];

document.writeln("<h2>" + randomTip + "</h2>");

document.writeln("<br>");

// ------------
// question 2 
document.writeln("<h1>" + "Current Date and Time" + "</h1>");

var now = new Date();

var date = now.toLocaleDateString();
var time = now.toLocaleTimeString();

document.writeln("<h2>Current Date: " + date + "</h2>");
document.writeln("<h2>Current Time: " + time + "</h2>");

// ------------
// question 3

document.writeln("<h1>" + "Use Try catch to Handle any Errors" + "</h1>");
try {
    var username = prompt("Enter your name:");

    if (username === null) {
        throw new Error("");
    }
    else {

        document.writeln("<h2>Welcome " + username + "</h2>");
    }
} catch (e) {

    document.writeln(e.message);
}

// ------------
// question 4
try {
    var input = prompt("Enter today’s date in format YYYY-MM-DD (e.g. 2025-07-24):");

    var input_user = /^\d{4}-\d{2}-\d{2}$/;

    if (input !== null && input_user.test(input)) {
        var dateObj = new Date(input);
        alert("Your date is: " + dateObj.toDateString());
    } 
    else {
        alert("Wrong Date Format");
    }
} catch (e) {
    alert("Something went wrong: " + e.message);
}