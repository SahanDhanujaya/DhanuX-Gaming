<%--
  Created by IntelliJ IDEA.
  User: Dhanujaya(Dhanu)
  Date: 25/01/2025
  Time: 15:33
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
      background-color: #111;
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
  </style>
</head>
<body>
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
            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product">
            <div class="card-body">
              <h5 class="product-title">Adam The Storyteller</h5>
              <p class="product-price">$250.00</p>
              <button class="btn btn-warning w-100">Add to Cart</button>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-4">
          <div class="card product-card">
            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product">
            <div class="card-body">
              <h5 class="product-title">Babel The Walking Box</h5>
              <p class="product-price">$180.00</p>
              <button class="btn btn-warning w-100">Select Option</button>
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

