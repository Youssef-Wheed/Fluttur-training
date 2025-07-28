
function sum(a, b) {
  return a + b;
}

function handleSum() {
  var num1 = prompt("Enter the first number:");
  var num2 = prompt("Enter the second number:");

  num1 = parseFloat(num1);
  num2 = parseFloat(num2);

  var result = sum(num1, num2);
  console.log("The sum is:", result);
}

//------------------------
function checkWeather(temp, feel) {
  if (temp >= 25 && temp <= 30 && feel >= 25 && feel <= 30) {
    console.log("Normal");
  } else if (temp < 25 && feel < 25) {
    console.log("Cold");
  } else if (temp > 30 && feel > 30) {
    console.log("Hot");
  } else {
    console.log("Ambiguous");
  }
}

function checkWeatherPrompt() {
  let temp = parseFloat(prompt("Enter the temperature :"));
  let feel = parseFloat(prompt("Enter the actual feel :"));

  if (isNaN(temp) || isNaN(feel)) {
    console.log("Invalid input");
  } else {
    checkWeather(temp, feel);
  }
}

//-----------------------

function getTrackByFaculty(faculty) {
  switch (faculty.toLowerCase()) {
    case "fci":
      alert("You’re eligible to Programming tracks");
      break;

    case "engineering":
      alert("You’re eligible to Network and Embedded tracks");
      break;

    case "commerce":
      alert("You’re eligible to ERP and Social media tracks");
      break;

    default:
      alert("You’re eligible to SW fundamentals track");
  }
}

function checkFaculty() {
  var faculty = prompt("Enter your faculty (e.g., FCI, Engineering, Commerce):");

  if (faculty !== null && faculty.trim() !== "") {
    getTrackByFaculty(faculty.trim());
  } else {
    alert("Please enter a valid faculty.");
  }
}
//-----------------------
function printOddNumbers(start, end) {
  for (let i = start; i <= end; i++) {
    if (i % 2 !== 0) {
      console.log(i);
    }
  }
}
function askAndPrintOdd() {
  let start = parseInt(prompt("Enter start number:"));
  let end = parseInt(prompt("Enter end number:"));

  if (!isNaN(start) && !isNaN(end)) {
    printOddNumbers(start, end);
  } else {
    alert("Please enter valid numbers!");
  }
}
//-----------------------
// ✅ مصفوفة النصائح (Tips Array)
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

let intervalId = null;

function startRandomAlerts() {
  if (intervalId === null) {
    intervalId = setInterval(() => {
      const randomIndex = Math.floor(Math.random() * arr.length);
      alert(arr[randomIndex]);
    }, 6000);
  }
}


function stopRandomAlerts() {
  clearInterval(intervalId);
  intervalId = null;
}
