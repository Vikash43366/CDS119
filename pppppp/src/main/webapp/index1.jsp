<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recycle Plastic</title>
    <style>
      .profile-avatar {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    object-fit: cover;
    border: 2px solid #333;
    cursor: pointer;
}

.profile-info {
    display: inline-block;
    margin-right: 10px;
}

.profile-dropdown {
    position: absolute;
    top: 60px;
    right: 30px;
    background: #333;
    color: white;
    padding: 10px;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    display: none;
}

.profile-dropdown button {
    background: transparent;
    color: aliceblue;
    border: none;
    padding: 8px 12px;
    cursor: pointer;
    width: 100%;
    text-align: left;
}

.profile-dropdown button:hover {
    background: #555;
}
    </style>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div>
        <div class="topnav" id="myTopnav">
            <a href="index1.jsp" class="actives">Home</a>
            <a href="contact.html">Contact</a>
            <div class="dropdown">
                <button class="dropbtn">Services<i class="fa fa-caret-down"></i></button>
                <div class="dropdown-content">
                    <a href="#proo">Buy</a>
                </div>
            </div>
            <a href="#about">About</a>
            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
            <a href="login.jsp" class="login" id="loginLink">Login</a>
            <div style="display: flex; justify-content: end; align-items: center;">
                <span style="color: aliceblue; margin-right: 30px;" id="username" class="profile-info">Username</span>
                <img src="bla.webp" alt="Profile Avatar" class="profile-avatar" id="profileAvatar" onclick="toggleProfileDropdown()">
                <div id="profileDropdown" class="profile-dropdown">
                    <button onclick="logout()">Logout</button>
                </div>
            </div>
        </div>
    </div>
<div style="background: rgb(217, 203, 226);background: linear-gradient(90deg, rgb(156, 180, 58) 41%, rgb(34, 243, 184) 100%, rgba(252,176,69,1) 100%);" >
        <h1 style=" padding: 10px 0;text-align: center; font-size:3em; font-weight: bolder;">Recycle Plastics</h1>
    </div>
    <section>
        <div class="sli">
            <div class="imageslide">
                <div class="slides">
                    <img src="image1.jpeg" alt="Image 1">
                    <img src="image2.jpeg" alt="Image 2">
                    <img src="image3.jpeg" alt="Image 3">
                    <img src="image4.jpeg" alt="Image 4">
                    <img src="image5.jpeg" alt="Image 5">
                </div>
            </div>
        </div>
    </section>

   <div id="proo">

        <p style="text-align: center; margin-top:10px;font-size: 2rem;">Sell your waste plastics and help the environment!</p>
            
                <h1 style="text-align: center; font-size: 3rem;">Plastic Products for Sale</h1>



        <section class="pro">
            <div class="prod">
                <img src="w1.jpeg" alt="Plastic Bottle">
                <h3>PET (Polyethylene Terephthalate)</h3>
                <h4>Plastic Bottle</h4>
                <button class="buy" onclick="openSellPage()">Sell</button>

            </div>

            <div class="prod">
                <img src="waste 8.1.jpg" alt="Plastic Bag">
                <h3>PP (Polypropylene)</h3>
                <h4>Bottle caps</h4>
                <button class="buy" onclick="openSellPage()">Sell</button>
            </div>


            <div class="prod">
                <img src="waste 6.webp" alt="Plastic Bag">
                <h3>HDPE (High-Density Polyethylene)</h3>
                <h4>Jugs & Detergent Bottles</h4>
                <button class="buy" onclick="openSellPage()">Sell</button>
            </div>


            <div class="prod">
                <img src="w2.webp" alt="Plastic Bag">
                <h3>PVC (Polyvinyl Chloride)</h3>
                <h4>Plumbing Pipes </h4>
                <button class="buy" onclick="openSellPage()">Sell</button>
            </div>



            <div class="prod">
                <img src="w3.jpeg" alt="Plastic Bag">
                <h3> LDPE (Low-Density Polyethylene)</h3>
                <h4>Grocery bags</h4>
                <button class="buy" onclick="openSellPage()">Sell</button>
            </div>
            
            
            
            
            
        </section>
    </div>

    <div id="about">
        <section class="about-section">
            <div class="about-container">
                <h2 class="about-title">About Us</h2>
                <p class="about-description">
                    We are a team of passionate individuals dedicated to providing the best service possible. Our mission is to innovate and inspire through creativity and excellence.
                </p>
                <div class="about-team">
                     <div class="team-member">
                        <img class="cc" src="bla.webp">
                        <h3 class="member-name">Vikash Singh</h3>
                        <p class="member-role">Fronted Developer</p>
                    </div>
                    <div class="team-member">
                        <img class="cc" src="bla.webp">
                        <h3 class="member-name">Rishu Kumar</h3>
                        <p class="member-role">Backend Developer</p>
                    </div>

                    <div class="team-member">
                        <img class="cc" src="bla.webp">
                        <h3 class="member-name">Ramanand Viswakarma</h3>
                        <p class="member-role"></p>
                    </div>

                    <div class="team-member">
                        <img class="cc" src="bla.webp">
                        <h3 class="member-name">Vishal Kumar Patel</h3>
                        <p class="member-role">Fronted Developer</p>
                    </div>
                </div>
            </div>
        </section>
    </div>


    <footer class="foot">
        <p>&copy; 2024 Recycle Plastics. All rights reserved.</p>
        <ul>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">Terms of Service</a></li>
            <li><a href="#">FAQ</a></li>
        </ul>
        <div class="social-icons">
            <a href="https://www.facebook.com/"><img src="f.jpg" alt="Facebook"></a>
            <a href="https://www.twitter.com"><img src="t.jpg" alt="Twitter"></a>
            <a href="https://www.instagram.com"><img src="i.jpeg" alt="Instagram"></a>
        </div>
    </footer>

    <script src="script.js"></script>
   <% 
    String name = (String) session.getAttribute("username"); 
    if (name == null) {
        name = "Guest"; 
    }
%>
<script>
    const username = "<%= name %>"; // Assign the JSP variable to a JavaScript variable

    function simulateLogin() {
        const loggedIn = true; 
        const profileAvatar = document.getElementById('profileAvatar');
        const loginLink = document.getElementById('loginLink');
        const usernameDisplay = document.getElementById('username');

        if (loggedIn) {
            profileAvatar.style.display = 'block'; 
            usernameDisplay.style.display = 'inline'; 
            usernameDisplay.textContent = username; 
            loginLink.style.display = 'none'; 
        } else {
            profileAvatar.style.display = 'none'; 
            usernameDisplay.style.display = 'none'; 
            loginLink.style.display = 'inline-block'; 
        }
    }

    simulateLogin();
</script>

        }

        simulateLogin();
    </script>
</body>
</html>