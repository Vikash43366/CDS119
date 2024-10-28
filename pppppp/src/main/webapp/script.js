function showLogin() {
  document.getElementById("loginForm").classList.add("active");
  document.getElementById("registerForm").classList.remove("active");
  document.getElementById("forgotPasswordForm").classList.remove("active");
  document.getElementById("login").classList.add("active");
  document.getElementById("register").classList.remove("active");
}

function showRegister() {
  document.getElementById("loginForm").classList.remove("active");
  document.getElementById("registerForm").classList.add("active");
  document.getElementById("forgotPasswordForm").classList.remove("active");
  document.getElementById("login").classList.remove("active");
  document.getElementById("register").classList.add("active");
}

function showForgotPassword() {
  document.getElementById("loginForm").classList.remove("active");
  document.getElementById("registerForm").classList.remove("active");
  document.getElementById("forgotPasswordForm").classList.add("active");
}

function sen(){
	alert("reset link sucessfully sent")
}

function showNotification(message) {
  const notification = document.getElementById("notification");
  notification.textContent = message;
  notification.classList.add("show");

  setTimeout(() => {
    notification.classList.remove("show");
  }, 3000);
}

function login() {
  alert("sucessfully login");
  window.location.href = 'index1.html?product=Plastic%20Bag';
}

function register() {
  alert("You have successfully registered!");
  window.location.href = 'index1.html?product=Plastic%20Bag';
}


function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  }


  function openSellPage() {
    window.location.href = 'sell-details.html?product=Plastic%20Bag';
}





function toggleProfileDropdown() {
  const dropdown = document.getElementById("profileDropdown");
  dropdown.style.display = dropdown.style.display === "none" || dropdown.style.display === "" ? "block" : "none";
}

function logout() {
  alert("You have been logged out!");
  window.location.href = 'index.jsp'; 
}

function al(){
	alert("Login to Access!")
}
function su(){
	alert("Data is Submitted! ")
}

window.addEventListener('click', function(event) {
  const dropdown = document.getElementById("profileDropdown");
  const avatar = document.getElementById("profileAvatar");
  if (!avatar.contains(event.target) && !dropdown.contains(event.target)) {
      dropdown.style.display = 'none';
  }
});