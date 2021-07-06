<%-- 
    Document   : userlist
    Created on : Jun 15, 2021, 10:19:46 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link href="https://use.fontawesome.com/releases/v5.0.1/css/all.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css"/>
        <link rel="stylesheet" href="css/managersider.css">
        <link rel="stylesheet" href="css/userlist.css">
        <link rel="stylesheet" href="css/managerprofile.css"/>
        <link rel="stylesheet" href="css/salelist.css"/>
        <link rel="stylesheet" href="css/dashboard.css"/>
        <link rel="stylesheet" href="css/admindashboard.css"/>
        <script src="js/managerpopup.js"></script>
        <script src="js/upload.js"></script>
        <script src="js/statuschange.js"></script>
        <script src="js/datepicker.js"></script>
        <style>
            .status{
                width:100px;
                height:24px;
                border-radius: 24px;
                color: white;
                font-weight: 400;
            }
            .enable{
                background: #29cc97;
            }
            .disable{
                background: #CC2929;
            }
            #tbllist_info {
                padding: 8px;
            }
            #tbllist_paginate{
                padding:8px;
            }
            #tbllist_paginate > a{
                margin: 10px;
            }
            #tbllist{
                border-bottom: 1px #DFE0EB solid;
            }
            .bottom{
                padding: 12px 0px 20px 0px;
            }
            #active {
            background: rgba(159, 162, 180, 0.08);
            color: #DDE2FF;
            border-left: 5px #DDE2FF solid;
            padding-left: 5px;
            }
            .paginate_button {
              cursor: pointer;
              *cursor: hand;
            }
            .show {
                display:block;
            }
            .picker-wrapper{
                margin-bottom: 50px;
            }
            .select-wrapper{
                width: 354px;
            }
            .select-wrapper::after{
                top: 0px;
            }
            #saleselect::after{
                top: -2px;
            }
            #saleselect{
                 width: 400px;
            }
            .admin-stats:hover{
                border: 1px solid #3751FF;
                box-shadow: 0 0 0 2px #DDE2FF;
                transition: all .2s ease;
                -webkit-transition: all .2s ease;
            }
            .admin-stats:hover .details-header, .admin-stats:hover .details{
                color: #3751FF;
                transition: all .2s ease;
                -webkit-transition: all .2s ease;
            }
        </style>
    </head>
    <body style="width: 100%; height:100%; margin: 0; padding: 0; background-color: #F7F8FC">
        <div class="wrapper row" style="margin:0;padding:0; max-width: 100%;">
            <div class="wrapper col-2" style="background-color: #363740; min-height:937px; padding-right: 0;">
              <ul class="nav flex-column col">
                  
                  <!-- header -->
                  <li class="nav-item" id="header">
                    <div class="navbar-brand" href="#">
                        <div class="container">
                            <div class="row justify-content-md-center">
                                <div class="col"><img src="img/logo.png" alt=""/></div>
                                <div class="col">Admin <br> Dashboard</div>
                            </div>
                        </div>
                    </div>
                  </li>
                  
                  <!-- item 1 -->
                  <li class="nav-item naviitem row" id="active">
                      <a class="navbar-brand overview" href="#">
                          <div class="container">
                            <div class="row justify-content-md-center">
                                <div class="col align-self-baseline"><img src="img/dashboard-chosen.png" alt=""/></div>
                                <div class="col align-self-baseline" style="font-size: 19px;">Overview</div>
                            </div>
                          </div>
                      </a>
                  </li>
                  
                  <!-- item 2 -->
                  <li class="nav-item naviitem row">
                      <a class="navbar-brand overview" href="#">
                          <div class="container">
                            <div class="row justify-content-md-center">
                                <div class="col align-self-baseline"><img src="img/users.png" alt=""/></div>
                                <div class="col align-self-baseline" style="font-size: 19px;">Users</div>
                            </div>
                          </div>
                      </a>
                  </li>
                  
                  <li class="nav-item naviitem row divider"></li>
              </ul>
            </div>

            <div class="wrapper col" style="background-color: #F7F8FC; padding: 30px 33px 30px 45px;" id="maincontent">
                <!-- main title -->
                <div class="maintitle row" style="margin-bottom: 30px;">
                    <div class="col-2" id="title"><span>Overview</span></div>
                    <div class="col-7"></div>
                    <div class="col row">
                        <div class="d-flex justify-content-end col-10 align-items-center" id="user">
                            Trần Tân Long <!-- input jstl session user here! -->
                        </div>
                        <div class="profile col-2">
                            <div id="avatar" class="ava" style="background-image: url(img/tanlong.png);" onclick="showPopup()"></div> <!-- get session's avatar -->
                        </div>
                    </div>
                </div>
                <!-- session -->
                <div class="picker row">
                    <div class="col-3 sale-member picker-title"><span id="session-role">Orders</span><br>
                        <div class="select-wrapper">
                            <select class="d-flex align-items-center admin-filter">
                                <option value="" selected>Select status</option>
                                <option>Submitted</option>
                                <option>Confirmed</option>
                                <option>Shipped</option>
                            </select>
                        </div><br>
                        <div class="admin-stats d-flex align-items-center justify-content-center">
                            <div class="details-header">New orders<br>
                                <span class="details">60</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 sale-member picker-title"><span id="session-role">Revenues</span><br>
                        <div class="select-wrapper">
                            <select class="d-flex align-items-center admin-filter">
                                <option value="" selected>Select Category</option>
                                <option>Phone</option>
                                <option>Laptop</option>
                                <option>Tablet</option>
                                <option>Smartwatch</option>
                                <option>Earphone</option>
                            </select>
                        </div><br>
                        <div class="admin-stats d-flex align-items-center justify-content-center">
                            <div class="details-header">USD<br>
                                <span class="details">$10M</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 sale-member picker-title"><span id="session-role">Customers</span><br>
                        <div class="select-wrapper">
                            <select class="d-flex align-items-center admin-filter">
                                <option value="" selected>Select type</option>
                                <option>Potential</option>
                                <option>Customers</option>
                            </select>
                        </div><br>
                        <div class="admin-stats d-flex align-items-center justify-content-center">
                            <div class="details-header">Customers<br>
                                <span class="details">43</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 sale-member picker-title"><span id="session-role">Feedbacks</span><br>
                        <div class="select-wrapper">
                            <select class="d-flex align-items-center admin-filter">
                                <option value="" selected>Select category</option>
                                <option>Phone</option>
                                <option>Laptop</option>
                                <option>Tablet</option>
                                <option>Smartwatch</option>
                                <option>Earphone</option>
                            </select>
                        </div><br>
                        <div class="admin-stats d-flex align-items-center justify-content-center">
                            <div class="details-header">Average stars<br>
                                <span class="details">4.5</span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="graph-filter row" style="padding:0; margin: 50px 0 0 0;">
                    <div class="input-group col-3 row" style="margin-right: 10px;">
                        <div class="input-group-prepend" style="height: 38px;">
                            <span class="input-group-text" id="basic-addon1" style="background-color:white; border: 1px #e3e3e3 solid; border-right-style: none;">
                                <i class="far fa-calendar-alt" style="font-size:22px;"></i>
                            </span>
                            <input type="text" name="daterange" id="datepicker" class="datepicker" style="height: 38px; width: 310px;"/>
                        </div>
                    </div>
                    <div class="col-3 sale-member picker-title">
                        <div class="select-wrapper">
                            <select class="d-flex align-items-center admin-filter">
                                <option value="" selected>Total</option>
                                <option>Shipped</option>
                            </select>
                        </div>
                    </div>
                </div>
                
                <!-- main graph -->
                <div class="graphwrapper">
                    <!-- graph header -->
                    <div class="graph-header row">
                        <div class="col-12 d-flex justify-content-start align-items-center graphtitle">Total order trends</div>
                    </div>
                    <div class="graph-desc">
                        From 18 May 2021 to 25 May 2021
                    </div>
                </div>
                
            </div>
        </div>
        
        <div class="popupwrapper" id="usermenu" style="padding:0;margin:0;">
            <div class="pro5 row popupitem">
                <div class="col-3 d-flex align-items-center justify-content-center" style="padding:0;">
                    <div id="menuavatar" style="background-image: url(img/tanlong.png);"></div>
                </div>
                <div class="col-9 d-flex align-items-center description">
                    <div class="descwrapper">
                        <p class="menu-itemtitle">Trần Tân Long</p>
                        <p>See your profile</p>
                    </div>
                </div>
            </div>
            <div class="menu-divider"></div>
            <div class="chgpsw row popupitem">
                <div class="col-3 d-flex align-items-center justify-content-center" id="chgpsw">
                    <div class="menuitemicon" style="background-image: url(img/chgpsw.png);"></div>
                </div>
                <div class="col-9 d-flex align-items-center description menu-itemtitle">Change Your Password</div>
            </div>
            <div class="menu-divider"></div>
            <div class="signout row popupitem" onclick="location.href='homepage.jsp';">
                <div class="col-3 d-flex align-items-center justify-content-center" id="signout">
                    <div class="menuitemicon" style="background-image: url(img/signout.png);"></div>
                </div>
                <div class="col-9 d-flex align-items-center description menu-itemtitle">Sign Out</div>
            </div>
        </div>
        <script>
            $('#datepicker').daterangepicker({
                "showDropdowns": true,
                "startDate": "06/26/2021",
                "endDate": "07/02/2021"
            }, function(start, end, label) {
              console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            },);           
        </script>
        
    </body>
</html>