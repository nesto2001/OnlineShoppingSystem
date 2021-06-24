<%-- 
    Document   : ProductDetails
    Created on : Jun 15, 2021, 9:12:19 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Product Details</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="css/sider.css">
        <link rel="stylesheet" href="css/ProductDetails.css">
    </head>

    <body>
        <!--header-->
        <%@include file="header.jsp" %>

        <main class="container">
            <div class="row">
                <!--Sider-->
                <div class="sider col-2">
                    <div class="col">
                        <form action="" class="col-sm-12 searchbar">
                            <input type="text" placeholder="Search" class="search-input col-sm-10" name="txtSearchProduct">
                            <button type="submit" id="search-button" class="col-sm-2">
                                <i class="fas fa-search"></i>
                            </button>
                        </form>
                        <br>
                        <h4>Categories</h4>
                        <c:set var="productCategoryList" value="${requestScope.PRODUCT_CATEGORY}"/>
                        <c:forEach var="productCategory" items="${productCategoryList}">
                        <div class="category">
                            <a href="">${productCategory.name}</a>
                        </div>
                        </c:forEach>
                    </div>
                </div>
                
                <div class="main-content container col-10" style="min-height: 700px;">
                    <c:set var="product" value="${requestScope.PRODUCT_DETAILS}"/>
                    <h1>Product</h1>
                    <div class="row">
                        <img src="img/${product.thumbnail}" alt="product-thumbnail" class="col-6 product-img">
                        <div class="col-6 product-info">
                            <h2>${product.title}</h2>
                            <span>Star: 4/5</span>
                            <h4 style="text-decoration: line-through">$${product.listPrice}</h4>
                            <h1>$${product.salePrice}</h1>
                            <p>${product.briefInfo}</p>
                            <form action="">
                                <label for="quantity-input">Quantity</label><br>
                                <div class="row">
                                    <div id="quantity-input">
                                        <input type="number" name="txtQuantity" value="1" class="quantity-input" min="1">
                                        <input type="hidden" name="productID" value="${product.id}"/>
                                    </div>
                                    <button type="submit" class="btn-add-to-cart" name="btAction">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span class="btn-add-to-cart-txt">Add to cart</span>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="product-description container">
                        <div class="product-description-titre col-2">
                            <h6>Description</h6>
                        </div>
                        <div class="product-description-para">
                            <p>${product.description}</p>
                        </div>
                        
                    </div>
                </div>
            </div>
        </main>

        <!--Footer-->
        <%@include file="footer.html" %>
    </body>
</html>
