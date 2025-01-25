<%--
  Created by IntelliJ IDEA.
  User: Dhanujaya(Dhanu)
  Date: 24/01/2025
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dark Theme Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .sidebar {
            background-color: #1e1e1e;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            padding: 20px;
            width: 240px;
        }
        .sidebar a {
            color: #bbbbbb;
            text-decoration: none;
            display: block;
            padding: 10px 15px;
            border-radius: 5px;
        }
        .sidebar a:hover {
            background-color: #333333;
            color: #ffffff;
        }
        .content {
            margin-left: 260px;
            padding: 20px;
        }
        .navbar-dark {
            background-color: #1e1e1e;
        }
        .card {
            background-color: #1e1e1e;
            border: none;
        }
        .card .card-title, .card .card-text {
            color: #ffffff;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-dark navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Settings</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Sidebar -->
<div class="sidebar">
    <h5 class="text-light">Navigation</h5>
    <a href="dashboard.jsp">Dashboard</a>
    <a href="admin-page.jsp">Admin</a>
    <a href="product.jsp">Product</a>
    <a href="#">Settings</a>
</div>

<!-- Content Area -->
<div class="content">
    <h1 class="mb-4">Welcome to the Dashboard</h1>
    <div class="row">
        <div class="col-md-4">
            <div class="card p-3 mb-4">
                <h5 class="card-title">Card Title 1</h5>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3 mb-4">
                <h5 class="card-title">Card Title 2</h5>
                <p class="card-text">Another example of card content.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card p-3 mb-4">
                <h5 class="card-title">Card Title 3</h5>
                <p class="card-text">This is yet another example of content.</p>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
