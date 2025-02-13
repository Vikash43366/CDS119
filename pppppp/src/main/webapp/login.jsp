<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Register</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body class="b">
    <div id="notification" class="notification hidden"></div>
    <div class="container">
        <div class="switch">
            <button id="login" class="switch-b active" onclick="showLogin()">Login</button>
            <button id="register" class="switch-b" onclick="showRegister()">Register</button>
        </div>
        
        <div id="loginForm" class="content active">
            <form action="LoginServlet" method="post">
                <div class="i">
                    <label for="Username">Username</label>
                    <input type="text" id="Username" name="username" required>
                </div>
                <div class="i">
                    <label for="Password">Password</label>
                    <input type="password" id="Password" name="password" required>
                </div>
                <button type="submit" class="but" onclick="login()">Login</button>
                <button type="button" class="but secondary" onclick="showForgotPassword()">Forgot Password?</button>
            </form>
        </div>
        
        <div id="registerForm" class="content hidden">
            <form action="RegisterServlet" method="post">
                <div class="i">
                    <label for="registerUsername">Username</label>
                    <input type="text" id="registerUsername" name="username" required>
                </div>
                <div class="i">
                    <label for="registerEmail">Email</label>
                    <input type="email" id="registerEmail" name="email" required>
                </div>
                <div class="i">
                    <label for="registerPassword">Password</label>
                    <input type="password" id="registerPassword" name="password" required>
                </div>
                <button type="submit" class="but">Register</button>
            </form>
        </div>
        
        <!-- Forgot Password Form -->
        <div id="forgotPasswordForm" class="content hidden">
            <form action="#" method="post">
                <div class="i">
                    <label for="forgotEmail">Email</label>
                    <input type="email" id="forgotEmail" name="email" required>
                </div>
                <button type="submit" class="but" onclick="sen()">Send Reset Link</button>
                <button type="button" class="but secondary" onclick="showLogin()">Back to Login</button>
            </form>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>