<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="author" content="Sahan Dhanujaya">
    <meta name="description" content="e-commerce gaming platform for selling and buying">
    <meta name="keyword" content="gaming,html,css,boostrap,jsp,selling,buying">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://i.pinimg.com/originals/1f/83/a1/1f83a1b8a9545e203cd48c2cc972a0d9.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="view/style.css">
    <title>Home</title>

</head>
<body>
<header style="background-color: #1A1A1A;"  class="container-fluid text-center">
    <nav class="navbar border-bottom border-body row" data-bs-theme="dark">
        <!-- Navbar content -->
        <div class="col col-sm col-md col-lg col-xl col-xxl"><h2 style=" color: white;font-size: 1.3rem;margin: 0;"><span style="color: #F8832A">DhanuX</span>Gaming</h2></div>
        <div class="col col-sm col-md col-lg col-xl col-xxl">
            <ul>
                <li><a href="">Home</a></li>
                <li>
                    <select style="border: none;background: #1A1A1A">
                        <option value="topic">Categories</option>
                        <option value="shooting"><a href="">Shooting</a></option>
                        <option value="racing"><a href="">Racing</a></option>
                        <option value="mini"><a href="">Mini</a></option>
                    </select>
                </li>
                <li><a href="">Product</a></li></li>
                <li><a href="">Contact</a></li>
                <li><a href="">Blog</a></li>
            </ul>
        </div>
        <div class="col col-sm col-md col-lg col-xl col-xxl">
            <button type="button"><a href=""><img src="assets/icons/icons8-search-50.png" alt="search icon"></a></button>
            <button type="button"><a href=""><img src="assets/icons/icons8-account-50.png" alt="acount icon"></a></button>
            <button type="button"><a href=""><img src="assets/icons/icons8-bag-50.png" alt="cart icon"></a></button>
        </div>
    </nav>
</header>
<%--hero section--%>
<hero>
    <div class="slider">
        <img src="assets/img/7b82ec696ff2d1ac334bad3e4be47baa.jpg" alt="Background Image 1">
        <img src="image2.jpg" alt="Background Image 2">
        <img src="image3.jpg" alt="Background Image 3">
    </div>
    <div id="middle-content" class="container">
        <div class="row">
            <div class="col-12 text-center">
                <div class="content">
                    <p>Star Wars Up Coming</p>
                    <h1>GAME GUIDE UNOFFICIAL</h1>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</hero>

<div class="container features">
    <div class="row">
        <div class="col-md-3 text-center">
            <p><strong>Free Delivery</strong></p>
            <p>Free shipping on all order</p>
        </div>
        <div class="col-md-3 text-center">
            <p><strong>Money Return</strong></p>
            <p>Back guarantee in 7 days</p>
        </div>
        <div class="col-md-3 text-center">
            <p><strong>Member Discount</strong></p>
            <p>On every order over $130.00</p>
        </div>
        <div class="col-md-3 text-center">
            <p><strong>Return Policy</strong></p>
            <p>Support 24 hours a day</p>
        </div>
    </div>
</div>

<div class="container special-category">
    <h2>Special Category</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="category1.jpg" class="card-img-top" alt="Category 1">
                <div class="card-body text-center">
                    <p>Latest PUBG Lite Game</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="category2.jpg" class="card-img-top" alt="Category 2">
                <div class="card-body text-center">
                    <p>New Battlefield 4 Game</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="category3.jpg" class="card-img-top" alt="Category 3">
                <div class="card-body text-center">
                    <p>Son Goku Jump Force</p>
                    <a href="#" class="btn">Shop Now</a>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>