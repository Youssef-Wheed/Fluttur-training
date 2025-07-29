//thank you register 
document.getElementById("registerForm").onsubmit = function (e) {
    e.preventDefault();
    const name = document.getElementById("fullName").value.trim();
    const password = document.getElementById("password").value;
    const repeat = document.getElementById("repeatPassword").value;
    const terms = document.getElementById("terms").checked;

    if (password !== repeat) {
        alert("Passwords do not match!");
        return;
    }

    if (!terms) {
        alert("You must accept the terms and conditions!");
        return;
    }

    window.location.href = "thanks.html?name=" + encodeURIComponent(name);
}


// focus full name 
const fullnameInput = document.getElementById("fullName");
fullnameInput.addEventListener("focus", function () {
    fullnameInput.style.border = "5px solid blue";
});

fullnameInput.addEventListener("blur", function () {
    fullnameInput.style.border = "1px solid #ccc";
});

// length full name  
const fullNameInput = document.getElementById("fullName");
fullNameInput.addEventListener("input", function () {
    const value = fullNameInput.value.trim();
    if (value.length >= 4 && value.length <= 10) {
        fullNameInput.style.backgroundColor = "white";
    } else {
        fullNameInput.style.backgroundColor = "gray";
    }
});

// check password 
function checkPasswordsMatch() {
    const password = document.getElementById("password").value;
    const repeat = document.getElementById("repeatPassword").value;
    const errorSpan = document.getElementById("passError");

    if (password === "" || repeat === "") {
        errorSpan.textContent = ""; 
        return;
    }

    if (password !== repeat) {
        errorSpan.textContent = "password and repeat password should be the same ";
    } else {
        errorSpan.textContent = "";
    }
}