<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="author" content="Sahan Dhanujaya">
    <meta name="description" content="e-commerce gaming platform for selling and buying">
    <meta name="keyword" content="gaming,html,css,boostrap,jsp,selling,buying">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://i.pinimg.com/originals/1f/83/a1/1f83a1b8a9545e203cd48c2cc972a0d9.jpg">
    <link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="view/style.css">
    <title>Home</title>

</head>
<body style="font-weight: 100">
<header class="hero-section">
    <nav class="navbar border-bottom border-body row" data-bs-theme="dark">
        <!-- Navbar content -->
        <div class="col col-sm col-md col-lg col-xl col-xxl">
            <h2 style=" color: white;font-size: 1.3rem;margin: 0;"><span style="color: #F8832A">DhanuX</span>Gaming
            </h2>
        </div>
        <div class="col col-sm col-md col-lg col-xl col-xxl">
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="category">Category</a> </li>
                <li><a href="">Product</a></li>
                <li><a href="">Contact</a></li>
                <li><a href="">Blog</a></li>
            </ul>
        </div>
        <div id="nav-btn" class="col col-sm col-md col-lg col-xl col-xxl">
            <button type="button"><a href=""><img src="assets/icons/icons8-search-50.png"
                                                  alt="search icon"></a></button>
            <%
                String name1 = request.getParameter("message");
                if (name1 != null){

            %>
            <button type="button"><a href="registerPage.jsp"><img src="assets/icons/account.png"
                                                                  alt="acount icon"></a><%=name1%></button>
            <%
                }else {

            %>
            <button type="button"><a href="registerPage.jsp"><img src="assets/icons/icons8-account-50.png"
                                                                  alt="acount icon"></a>Sign in</button>
            <%
                }
            %>

            <button type="button"><a href=""><img src="assets/icons/icons8-bag-50.png"
                                                  alt="cart icon"></a></button>
        </div>
    </nav>
    <div id="heroCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="assets/img/1500700-3840x2160-desktop-4k-shooter-game-wallpaper-photo.jpg"
                     class="d-block w-100" alt="Hero Image 1">
            </div>
            <div class="carousel-item">
                <img src="assets/img/2086790.jpg" class="d-block w-100" alt="Hero Image 2">
            </div>
            <div class="carousel-item">
                <img src="assets/img/a-spectacular-gaming-adventure-with-this-stunning-4k-wallpaper-free-photo.jpg"
                     class="d-block w-100" alt="Hero Image 3">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="hero-content">
        <p>Star Wars Up Coming</p>
        <h1>GAME GUIDE UNOFFICIAL</h1>
        <a href="shopNow.jsp" class="btn btn-warning btn-lg">Shop Now</a>
    </div>
</header>

<section class="features">
    <div class="container">
        <div class="row">
            <div class="col-md-3 feature" >
                <div>
                    <img src="assets/icons/icons8-shipped-50.png" alt="delivery">
                </div>
                <div>
                    <h5>Free Delivery</h5>
                    <p>Free shipping on all orders</p>
                </div>
            </div>
            <div class="col-md-3 feature">
                <h5>Money Return</h5>
                <p>Back guarantee in 7 days</p>
            </div>
            <div class="col-md-3 feature">
                <h5>Member Discount</h5>
                <p>On every order over $130.00</p>
            </div>
            <div class="col-md-3 feature">
                <h5>Return Policy</h5>
                <p>Support 24 hours a day</p>
            </div>
        </div>
    </div>
</section>

<section class="special-category">
    <div class="container">
        <h2>Special <span style="color: white">Category</span></h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="assets/img/8fef46c64fe846ac995e812de6b40776.jpg " class="card-img-top"
                         alt="Category 1">
                    <div class="card-body text-center">
                        <p>Latest PUBG Lite Game</p>
                        <a href="#" class="btn btn-warning">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="assets/img/HD-wallpaper-nfs-rivals-game-video.jpg" class="card-img-top"
                         alt="Category 2">
                    <div class="card-body text-center">
                        <p>New Battlefield 4 Game</p>
                        <a href="#" class="btn btn-warning">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="assets/img/sniper-ghost-warrior-2-wallpaper-preview.jpg" class="card-img-top"
                         alt="Category 3">
                    <div class="card-body text-center">
                        <p>Son Goku Jump Force</p>
                        <a href="#" class="btn btn-warning">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="products" class="products-section">
    <div class="container">
        <h2 class="text-center mb-4">Our Products</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <img src="assets/img/freepik_br_83d31f9b-d8a7-4243-b012-b496bf047ca3.png" class="card-img-top" alt="Product 1">
                    <div class="card-body">
                        <p>Product 1</p>
                        <p class="text-warning">$24.00</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="assets/img/freepik_br_a1bca3b8-e0d5-4d2a-8943-29328df4ed8e.png" class="card-img-top" alt="Product 2">
                    <div class="card-body">
                        <p>Product 2</p>
                        <p class="text-warning">$17.00</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="assets/img/freepik_br_fe76375f-75f5-4d4f-909d-31751648e6dc.png" class="card-img-top" alt="Product 3">
                    <div class="card-body">
                        <p>Product 3</p>
                        <p class="text-warning">$100.00</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <img src="product4.jpg" class="card-img-top" alt="Product 4">
                    <div class="card-body">
                        <p>Product 4</p>
                        <p class="text-warning">$250.00</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="footer text-center">
    <p>&copy; 2025 Game Guide. All rights reserved. | <a href="#">Privacy Policy</a></p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    <%
        String name = request.getParameter("message");
        if (!name.equals(null)){

    %>
    Swal.fire({
        title: "Registration!",
        text: <%=name %>" Welcome to game world",
        icon: "success"
    });
    <%
        }
    %>


</script>
</body>
</html>