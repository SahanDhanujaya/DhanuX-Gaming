<%--
  Created by IntelliJ IDEA.
  User: Dhanujaya(Dhanu)
  Date: 25/01/2025
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shopping Cart</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #121212;
      color: #ffffff;
    }
    .shopping-cart {
      background-color: #1e1e1e;
      border-radius: 10px;
      padding: 20px;
    }
    .cart-item {
      border-bottom: 1px solid #444;
      padding: 10px 0;
    }
    .cart-item:last-child {
      border-bottom: none;
    }
    .cart-item img {
      background-color: #2c2c2c;
    }
    .card-details {
      background-color: #1e1e1e;
      color: #ffffff;
      border-radius: 10px;
      padding: 20px;
    }
    .card-details input, .card-details select {
      background-color: #2c2c2c;
      color: #ffffff;
      border: none;
    }
    .btn-checkout {
      background-color: #ffcc00;
      color: #000;
    }
    .btn-light {
      background-color: #2c2c2c;
      color: #ffffff;
      border: 1px solid #444;
    }
    .btn-light:hover {
      background-color: #3c3c3c;
    }
    .btn-danger {
      background-color: #ff4444;
    }
  </style>
</head>
<body>
<div class="container my-5">
  <div class="row g-4">
    <!-- Shopping Cart Section -->
    <div class="col-md-7">
      <div class="shopping-cart">
        <h4>Your Shopping Cart</h4>
        <div class="cart-item d-flex align-items-center justify-content-between">
          <div class="d-flex align-items-center">
            <img src="https://via.placeholder.com/50" alt="item" class="rounded-circle me-3">
            <div>
              <p class="mb-0">Denim T-Shirt</p>
              <small>Ref: 007197456</small>
            </div>
          </div>
          <div class="text-center">
            <p class="mb-0">Blue</p>
          </div>
          <div class="text-center d-flex align-items-center">
            <button class="btn btn-light btn-sm">-</button>
            <span class="mx-2">2</span>
            <button class="btn btn-light btn-sm">+</button>
          </div>
          <div>
            <p class="mb-0">7500.00 NGN</p>
          </div>
          <button class="btn btn-danger btn-sm">&times;</button>
        </div>

        <!-- Repeat this block for other items -->
        <div class="cart-item d-flex align-items-center justify-content-between">
          <div class="d-flex align-items-center">
            <img src="https://via.placeholder.com/50" alt="item" class="rounded-circle me-3">
            <div>
              <p class="mb-0">Denim Pants</p>
              <small>Ref: 011015233</small>
            </div>
          </div>
          <div class="text-center">
            <p class="mb-0">Blue</p>
          </div>
          <div class="text-center d-flex align-items-center">
            <button class="btn btn-light btn-sm">-</button>
            <span class="mx-2">3</span>
            <button class="btn btn-light btn-sm">+</button>
          </div>
          <div>
            <p class="mb-0">9000.00 NGN</p>
          </div>
          <button class="btn btn-danger btn-sm">&times;</button>
        </div>
        <!-- End repeat -->

        <div class="text-end mt-3">
          <strong>Subtotal:</strong> 45500.00 NGN
        </div>
        <div class="text-start mt-3">
          <a href="#" class="btn btn-link">Back to Shop</a>
        </div>
      </div>
    </div>

    <!-- Card Details Section -->
    <div class="col-md-5">
      <div class="card-details">
        <h4>Card Details</h4>
        <form>
          <div class="mb-3">
            <label for="cardType" class="form-label">Select Card Type</label>
            <select id="cardType" class="form-select">
              <option>Visa</option>
              <option>MasterCard</option>
              <option>Verve</option>
            </select>
          </div>
          <div class="mb-3">
            <label for="cardNumber" class="form-label">Card Number</label>
            <input type="text" id="cardNumber" class="form-control" placeholder="Enter card number">
          </div>
          <div class="row">
            <div class="col">
              <label for="expiryDate" class="form-label">Expiry Date</label>
              <input type="text" id="expiryDate" class="form-control" placeholder="MM/YY">
            </div>
            <div class="col">
              <label for="cvv" class="form-label">CVV</label>
              <input type="text" id="cvv" class="form-control" placeholder="CVV">
            </div>
          </div>
          <div class="mt-4">
            <button type="button" class="btn btn-checkout w-100">Checkout</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
