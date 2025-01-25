<%--
  Created by IntelliJ IDEA.
  User: Dhanujaya(Dhanu)
  Date: 25/01/2025
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #111;
            color: #fff;
        }
        .product-card {
            background-color: #222;
            border: none;
            border-radius: 10px;
            overflow: hidden;
        }
        .product-card img {
            height: 200px;
            object-fit: cover;
        }
        .product-title {
            color: white;
            font-size: 1.1rem;
        }
        .product-price {
            color: #f39c12;
            font-weight: bold;
        }
        .filter-section {
            background-color: #222;
            border-radius: 10px;
            padding: 15px;
        }
        .footer {
            background-color: #2a2a2a;
            color: #bbb;
            padding: 20px 0;
        }
        .footer a {
            color: #f39c12;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
        header {
            height: fit-content;
            z-index: 1;
        }

        header>nav {}

        header>nav>div:nth-child(1) {
            place-self: center;
            display: block;
            position: relative;
        }

        header>nav>div:nth-child(1)>h2 {
            color: white;
            font-size: 1.3rem;
            margin: 0;
        }

        header>nav ul {
            display: flex;
            justify-content: center;
            align-items: center;
            list-style: none;
            margin: 0;
        }

        header>nav>div:nth-child(2) {
            place-self: center end;
        }

        header>nav ul>li {
            margin-inline: 15px;
        }

        header>nav ul>li>a {
            text-decoration: none;
            color: white;
        }

        header>nav>div:nth-child(2)>ul>li>a:hover {
            color: #F8832A;
        }

        header>nav>div:nth-child(2)>ul>li>a::after {
            content: " ";
            position: absolute;
            left: 0;
            bottom: -5px;
            width: 100%;
            height: 3px;
            background: #F8832A;
            border-radius: 40px;
            transform: scaleX(0);
            transform-origin: right;
            transition: transform, 3s;
        }

        header>nav>div:nth-child(2)>ul>li>a:hover::after {
            transform-origin: left;
            transform: scaleX(1);
        }

        @keyframes borderAnimation {
            to {
                border-bottom-color: rgba(248, 131, 42, 0.58);
            }

            from {
                border-bottom-color: rgb(248, 131, 42);
            }
        }

        header>nav>div:last-child {
            place-self: center end;
        }

        header>nav #nav-btn button {
            border: none;
            background: none;
            margin-inline: 10px;

        }

        header>nav>div:last-child>button img {
            width: 1rem;

        }
    </style>
</head>
<body>
<header>
    <nav class="navbar border-bottom border-body row" data-bs-theme="dark">
        <!-- Navbar content -->
        <div class="col col-sm col-md col-lg col-xl col-xxl">
            <h2 style=" color: white;font-size: 1.3rem;margin: 0;"><span style="color: #F8832A">DhanuX</span>Gaming
            </h2>
        </div>
        <div class="col col-sm col-md col-lg col-xl col-xxl">
            <ul>
                <li><a href="">Home</a></li>
                <li>
                    <select style="border: none;background: #1A1A1A;color: white;">
                        <option value="topic">Categories</option>
                        <option value="shooting"><a href="">Shooting</a></option>
                        <option value="racing"><a href="">Racing</a></option>
                        <option value="mini"><a href="">Mini</a></option>
                    </select>
                </li>
                <li><a href="">Product</a></li>
                </li>
                <li><a href="">Contact</a></li>
                <li><a href="">Blog</a></li>
            </ul>
        </div>
        <div id="nav-btn" class="col col-sm col-md col-lg col-xl col-xxl">
            <button type="button"><a href=""><img src="assets/icons/icons8-search-50.png"
                                                  alt="search icon"></a></button>
            <button type="button"><a href="login.jsp"><img src="assets/icons/icons8-account-50.png"
                                                           alt="acount icon"></a></button>
            <button type="button"><a href=""><img src="assets/icons/icons8-bag-50.png"
                                                  alt="cart icon"></a></button>
        </div>
    </nav>
</header>

<div class="container my-5">
    <div class="row">
        <!-- Sidebar Filters -->
        <div class="col-md-3">
            <div class="filter-section mb-4">
                <h5 class="mb-3">Shop By Categories</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-decoration-none text-light">Fortnite</a></li>
                    <li><a href="#" class="text-decoration-none text-light">Minecraft</a></li>
                    <li><a href="#" class="text-decoration-none text-light">Shooters</a></li>
                </ul>
            </div>

            <div class="filter-section">
                <h5 class="mb-3">Filter By</h5>

                <h6>Availability</h6>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="inStock">
                    <label class="form-check-label" for="inStock">In stock</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="outOfStock">
                    <label class="form-check-label" for="outOfStock">Out of stock</label>
                </div>

                <h6 class="mt-3">Price</h6>
                <input type="range" class="form-range" min="0" max="500" step="10">
            </div>
        </div>

        <!-- Products Grid -->
        <div class="col-md-9">
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card product-card">
                        <img src="assets/img/sniper-ghost-warrior-2-wallpaper-preview.jpg" class="card-img-top" alt="Product">
                        <div class="card-body">
                            <h5 class="product-title">Adam The Storyteller</h5>
                            <p class="product-price">$250.00</p>
                            <button class="btn btn-warning w-100 mb-2">Add to Cart</button>
                            <button class="btn btn-success w-100">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card product-card">
                        <img src="assets/img/HD-wallpaper-nfs-rivals-game-video.jpg" class="card-img-top" alt="Product">
                        <div class="card-body">
                            <h5 class="product-title">Babel The Walking Box</h5>
                            <p class="product-price">$180.00</p>
                            <button class="btn btn-warning w-100 mb-2">Add to Cart</button>
                            <button class="btn btn-success w-100">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card product-card">
                        <img src="assets/img/a-spectacular-gaming-adventure-with-this-stunning-4k-wallpaper-free-photo.jpg" class="card-img-top" alt="Product">
                        <div class="card-body">
                            <h5 class="product-title">BangBangShooting</h5>
                            <p class="product-price">$120.00</p>
                            <button class="btn btn-warning w-100 mb-2">Add to Cart</button>
                            <button class="btn btn-success w-100">Buy Now</button>
                        </div>
                    </div>
                </div>
                <!-- Add more products as needed -->
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5>Contact Us</h5>
                <p>GameWar - Video Game Store<br>San Francisco, CA</p>
                <p>Phone: +1 012-345-6789</p>
            </div>
            <div class="col-md-4">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Search</a></li>
                    <li><a href="#">About Us</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5>Newsletter</h5>
                <form>
                    <div class="input-group">
                        <input type="email" class="form-control" placeholder="Enter your email">
                        <button class="btn btn-warning">Subscribe</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

