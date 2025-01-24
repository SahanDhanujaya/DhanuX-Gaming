<%--
  Created by IntelliJ IDEA.
  User: Dhanujaya(Dhanu)
  Date: 24/01/2025
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dark Mode Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #121212;
      color: #ffffff;
    }
    .card {
      background-color: #1e1e1e;
      border: none;
      border-radius: 10px;
    }
    .form-control, .form-select {
      background-color: #1e1e1e;
      color: #ffffff;
      border: 1px solid #333333;
    }
    .form-control:focus, .form-select:focus {
      background-color: #2a2a2a;
      color: #ffffff;
      border-color: #555555;
      box-shadow: none;
    }
    .btn {
      background-color: #4a148c;
      color: #ffffff;
    }
    .btn:hover {
      background-color: #6a1b9a;
    }
    table {
      color: #ffffff;
    }
    th, td {
      border: 1px solid #333333;
    }
    .table thead th {
      background-color: #1e1e1e;
    }
  </style>
</head>
<body>
<div class="container-fluid p-4">
  <!-- Payment Method Section -->
  <div class="row mb-4">
    <div class="col-md-8">
      <div class="card p-4">
        <h5 class="card-title">Payment Method</h5>
        <form>
          <div class="row mb-3">
            <div class="col-md-6">
              <label for="cardholderName" class="form-label">Cardholder Name</label>
              <input type="text" class="form-control" id="cardholderName" placeholder="Cardholder Name">
            </div>
            <div class="col-md-6">
              <label for="cardNumber" class="form-label">Card Number</label>
              <input type="text" class="form-control" id="cardNumber" placeholder="Card Number">
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-md-6">
              <label for="expireMonth" class="form-label">Expire Month</label>
              <select class="form-select" id="expireMonth">
                <option>January</option>
                <option>February</option>
                <option>March</option>
                <!-- Add more months -->
              </select>
            </div>
            <div class="col-md-6">
              <label for="expireYear" class="form-label">Expire Year</label>
              <select class="form-select" id="expireYear">
                <option>2023</option>
                <option>2024</option>
                <option>2025</option>
                <!-- Add more years -->
              </select>
            </div>
          </div>
          <div class="row mb-3">
            <div class="col-md-6">
              <label for="cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cvv" placeholder="CVV">
            </div>
          </div>
          <button type="submit" class="btn w-100">Send</button>
        </form>
      </div>
    </div>
    <!-- Exchange Panel -->
    <div class="col-md-4">
      <div class="card p-4">
        <h5 class="card-title">Exchange</h5>
        <form>
          <div class="mb-3">
            <label for="currency" class="form-label">Currency</label>
            <select class="form-select" id="currency">
              <option>Bitcoin</option>
              <option>Ethereum</option>
              <option>Litecoin</option>
            </select>
          </div>
          <div class="mb-3">
            <label for="amount" class="form-label">Enter your amount</label>
            <input type="text" class="form-control" id="amount" placeholder="0.00">
          </div>
          <button type="submit" class="btn w-100">Exchange Now</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Activities History Table -->
  <div class="row">
    <div class="col-12">
      <div class="card p-4">
        <h5 class="card-title">Activities History</h5>
        <table class="table table-dark table-hover">
          <thead>
          <tr>
            <th>Crypto Orders</th>
            <th>Sender ID</th>
            <th>Transaction ID</th>
            <th>Time</th>
            <th>Status</th>
            <th>Amount</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>Buy Order</td>
            <td>gdh-34um3bbj</td>
            <td>HJD9R034JNN3N43</td>
            <td>10:23:45</td>
            <td><span class="text-success">Completed</span></td>
            <td>+0.041BTC</td>
          </tr>
          <!-- Add more rows as needed -->
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
