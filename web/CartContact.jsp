<%-- 
    Document   : CartContact
    Created on : Jun 16, 2021, 1:21:28 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cart Contact</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="css/header-footer.css">
        <link rel="stylesheet" href="css/sider.css">
        <link rel="stylesheet" href="css/CartContact.css">
        <link rel="stylesheet" href="css/pop-up.css">
        <script src="js/homepage.js"></script>
    </head>

    <body>
        <!--header-->
        <header class="container wrapper">
            <nav class="navbar navbar-expand">
                <div class="navbar-branch col-2">
                    <a href="" id="logo">
                        <img src="" alt="Logo">
                    </a>
                </div>
                <form action="" class="col-3 searchbar">
                    <input type="text" placeholder="Search" class="search-input col-10" name="txtSearchProduct">
                    <button type="submit" id="search-button" class="col-2" name="btAction">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
                <ul class="navbar-nav col-4">
                    <li class="nav-item">
                        <a href="">Products</a>
                    </li>
                    <li class="nav-item">
                        <a href="">Blogs</a>
                    </li>
                </ul>
                <i class="fas fa-shopping-cart col-1"></i>
                <button class="col-1 header-sign-in" onclick="openLogin()">Sign in</button>
            </nav>
        </header>

        <!--Login form-->
        <div id="login" class="container pop-up">
            <div class="row">
                <div class="col-4 welcome">
                    <div class="container">
                        <h1>Welcome!</h1>
                        <h3>Become a member and connect with us</h3>
                        <button class="welcome-btn" onclick="openRegister()">Sign up</button>
                    </div>
                </div>
                <div class="col-8 form-col">
                    <div class="close-btn" onclick="closePopUp('login')">
                        <i class="far fa-times-circle"></i>
                    </div>
                    <div class="container">
                        <div class="col-12">
                            <h1>Sign in</h1>
                            <form action="" method="POST" class="form">
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Email" name="txtEmail">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" placeholder="Password" name="txtPassword">
                                </div>
                                <button type="submit" class="form-col-btn" name="btAction">Sign in</button>
                            </form>
                            <span onclick="openForgotPassword()">Forgot your password?</span>
                            <img src="img/Frame.png" alt="frame" id="frame-hand-1">
                        </div>                
                    </div>
                </div>
            </div>
        </div>

        <!--User register form-->
        <div id="register" class="container pop-up">
            <div class="row">
                <div class="col-4 welcome" id="register-welcome">
                    <div class="container">
                        <h1>Welcome!</h1>
                        <h3>Already a member?<br>Sign in to keep up with us.</h3>
                        <button class="welcome-btn" onclick="openLogin()">Sign in</button>
                        <img src="img/Frame.png" alt="frame" id="frame-hand-2">
                    </div>
                </div>
                <div class="col-8 form-col">
                    <div class="close-btn" onclick="closePopUp('register')">
                        <i class="far fa-times-circle"></i>
                    </div>
                    <div class="container">
                        <div class="col-12">
                            <h1>Create Account</h1>
                            <form action="" method="POST" class="form">
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Email" name="txtEmail">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" placeholder="Password" name="txtPassword">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" placeholder="Confirm password" name="txtConfirm">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Fullname" name="txtFullName">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Mobile" name="txtMobile">
                                </div>
                                <div class="form-group">
                                    <select class="form-control" name="txtGender">
                                        <option disabled selected>Gender</option>
                                        <option>Male</option>
                                        <option>Female</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Address" name="txtAddress"></textarea>
                                </div>
                                <button type="submit" class="form-col-btn" name="btAction">Sign up</button>
                            </form>
                        </div>                
                    </div>
                </div>
            </div>
        </div>

        <!--Forgot password-->
        <div id="forgot-password" class="container pop-up form-col">
            <div class="close-btn" onclick="closePopUp('forgot-password')">
                <i class="far fa-times-circle"></i>
            </div>
            <div class="container">
                <div class="col-12">
                    <h1>Forgot Password</h1>
                    <form action="" method="POST" class="form">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Email" name="txtEmail">
                        </div>
                        <button type="submit" class="form-col-btn forgot-btn" onclick="resetNoti()" name="btAction">Request Reset Link</button>
                    </form>
                    <button class="welcome-btn forgot-btn" id="forgot-btn" onclick="openLogin()">Sign in</button>
                </div>
            </div>
        </div>

        <main class="container">
            <div class="row">
                <!--Sider-->
                <div class="sider">
                    <div class="col">
                        <form action="" class="col-sm-12 searchbar">
                            <input type="text" placeholder="Search" class="search-input col-sm-10" name="txtSearchProduct">
                            <button type="submit" id="search-button" class="col-sm-2">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>
                        <br>
                        <h4>Categories</h4>
                        <div class="category">
                            <a href="">Smartphone</a>
                        </div>
                        <div class="category">
                            <a href="">Laptop</a>
                        </div>
                        <div class="category">
                            <a href="">Smartwatch</a>
                        </div>
                        <div class="category">
                            <a href="">Earphone</a>
                        </div>
                    </div>
                </div>

                <!--Main content-->
                <div class="main-content container">
                    <h1>Your Cart</h1>
                    <div class="row">
                        <div class="product-in-cart col-8">
                            <div class="product row container">
                                <img src="../img/product-thumbnail.jpg" alt="product" class="col-3">
                                <div class="product-info container col-9">
                                    <div class="d-flex justify-content-between">
                                        <h4>Vintage Typewriter</h4>
                                        <h5>$49.50</h5>
                                    </div>
                                    <span>Quantity: 1</span>
                                </div>
                            </div>
                            <div class="product row container">
                                <img src="../img/product-thumbnail.jpg" alt="product" class="col-3">
                                <div class="product-info container col-9">
                                    <div class="d-flex justify-content-between">
                                        <h4>Plastic Plugs</h4>
                                        <h5>$24.96</h5>
                                    </div>
                                    <span>Quantity: 2</span>
                                </div>
                            </div>
                            <br>
                            <!--Contact form-->
                            <div class="contact-form container col-12">
                                <h6>Contact Info</h6>
                                <form action="" method="POST" id="contact-info">
                                    <div class="row frm-ctrl">
                                        <label for="txtReceiverName" class="col-3">Full Name:</label>
                                        <input type="text" name="txtReceiverName" value="">
                                    </div>
                                    <div class="row frm-ctrl">
                                        <label for="txtReceiverGender" class="col-3">Gender:</label>
                                        <select name="txtReceiverGender">
                                            <option disabled selected>Gender</option>
                                            <option value="0">Male</option>
                                            <option value="1">Female</option>
                                        </select>
                                    </div>
                                    <div class="row frm-ctrl">
                                        <label for="txtReceiverEmail" class="col-3">Email:</label>
                                        <input type="text" name="txtReceiverEmail" value="">
                                    </div>
                                    <div class="row frm-ctrl">
                                        <label for="txtReceiverMobile" class="col-3">Mobile:</label>
                                        <input type="text" name="txtReceiverMobile" value="">
                                    </div>
                                    <div class="row frm-ctrl">
                                        <label for="txtReceiverAddress" class="col-3">Address:</label>
                                        <textarea name="txtReceiverAddress" cols="33" rows="4"></textarea>
                                    </div>
                                    <div class="row frm-ctrl">
                                        <label for="txtNote" class="col-3">Note:</label>
                                        <textarea name="txtNote" cols="33" rows="4"></textarea>
                                    </div>
                                </form>
                            </div>

                        </div>

                        <div class="summary col-4 d-flex flex-column">
                            <h3 class="mb-auto">SUMMARY</h3>
                            <div class="d-flex justify-content-between">
                                <span>Total:</span>
                                <span>$81.91</span>
                            </div>
                            <br>
                            <div class="d-flex justify-content-between">
                                <button class="btn-change">CHANGE</button>
                                <button class="btn-submit" name="btAction" form="contact-info">SUBMIT</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!--Footer-->
        <footer class="container footer-wrapper">
            <div class="row footer-row-1">
                <div class="col-3 footer-column">
                    <h3>Customer Center</h3>
                    <p>070-2707-1234<br/>
                        Weekdays 09:30 - 18:00<br>
                        Weekends 12:00 - 13:00<br/>
                        Sat, Sun, National holidays</p>
                </div>
                <div class="col-3 footer-column">
                    <h3>Shipment info</h3>
                    <p>Track Shipping Location<br>
                        Refund/exchange address<br>
                        Incheon Gaeyanggu Gesangdong<br>
                        GeyangBG #1117<br>
                        (Please make sure to use<br> 
                        Post Office Parcel service)</p>
                </div>
                <div class="col-3 footer-column">
                    <h3>Company</h3>
                    <p>Company<br>
                        Notice/Event</p>
                </div>
                <div class="col-3 footer-column">
                    <h3>Social media</h3>
                    <i class="fab fa-facebook-square"></i>
                    <i class="fab fa-youtube"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-pinterest-p"></i>
                </div>
            </div>
            <div class="row  footer-row-2">
                <p class="col-12">CEO: TaiNT&emsp;Company Name: FPTEdu&emsp;Tel: 070-123-1234&emsp;Fax: 02-123-4567&emsp;E-mail: hcmuni@fpt.edu.vn</p>
                <p class="col-12">Address: Lô E2a-7, Đường D1, Khu Công nghệ cao, P.Long Thạnh Mỹ, Tp. Thủ Đức, TP.HCM.</p>
                <p class="col-12">License Number: 123-45-78910&emsp;Technical Manager: TaiNT</p>
                <p class="col-12">ⓒ 2021 FPTEdu All rights reserved.&emsp;Privacy Policy&emsp;Terms of Service</p>
            </div>
        </footer>
    </body>
</html>
