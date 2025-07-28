var input = document.getElementById("myInput");

input.onkeydown = function (event) {
    alert("Key: " + event.key + "\nKeyCode: " + event.keyCode + "\nCode: " + event.code);
}

input.onmousedown = function (event) {
    let button;
    switch (event.button) {
        case 0:
            button = "Left Click";
            break;
        case 1:
            button = "Middle Click";
            break;
        case 2:
            button = "Right Click";
            break;
        default:
            button = "Unknown button";
    }
    alert("Mouse Button Clicked: " + button);
}

//---
var clockInterval;

function startClock() {
    if (clockInterval) return;
    clockInterval = setInterval(() => {
        const now = new Date();
        const timeString = now.toLocaleTimeString();
        document.getElementById("clock").textContent = "Current time: " + timeString;
    }, 1000);
}

function stopClock() {
    clearInterval(clockInterval);
    clockInterval = null;
}

//----
var input = document.getElementById("myTextBox");

input.onfocus = function () {
    console.log("You are inside input");
};

input.onblur = function () {
    console.log("You are outside input");
};


// canvas
const canvas = document.getElementById("myCanvas");
const ctx = canvas.getContext("2d");

// ========= FACE STYLE: gradient =========
const faceGradient = ctx.createRadialGradient(100, 100, 10, 100, 100, 75);
faceGradient.addColorStop(0, "yellow");
faceGradient.addColorStop(1, "orange");


ctx.beginPath();
ctx.fillStyle = faceGradient;
ctx.arc(100, 100, 75, 0, Math.PI * 2); // Face
ctx.fill();
ctx.stroke();

// Eyes
ctx.beginPath();
ctx.fillStyle = "black";
ctx.arc(70, 80, 10, 0, Math.PI * 2); // Left Eye
ctx.arc(130, 80, 10, 0, Math.PI * 2); // Right Eye
ctx.fill();

// Smile
ctx.beginPath();
ctx.strokeStyle = "black";
ctx.lineWidth = 5;
ctx.arc(100, 100, 30, 0, Math.PI, false); // smile
ctx.stroke();


// ========= DRAW SAD FACE =========
const xOffset = 250; // move sad face to right

ctx.beginPath();
ctx.fillStyle = faceGradient;
ctx.arc(100 + xOffset, 100, 75, 0, Math.PI * 2); // Face
ctx.fill();
ctx.stroke();

// Eyes
ctx.beginPath();
ctx.fillStyle = "black";
ctx.arc(70 + xOffset, 80, 10, 0, Math.PI * 2); // Left Eye
ctx.arc(130 + xOffset, 80, 10, 0, Math.PI * 2); // Right Eye
ctx.fill();

// Sad mouth (upside down arc)
ctx.beginPath();
ctx.strokeStyle = "black";
ctx.lineWidth = 5;
ctx.arc(100 + xOffset, 125, 30, 0, Math.PI, true); // sad mouth
ctx.stroke();


// ========= WRITE NAME =========
ctx.font = "bold 20px Arial";
ctx.fillStyle = "red";
ctx.fillText("Youssef Wheed", 150, 250); // adjust position as you like


