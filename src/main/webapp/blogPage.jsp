<%--
  Created by IntelliJ IDEA.
  User: Dhanujaya(Dhanu)
  Date: 25/01/2025
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GameWar Blog</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #111;
      color: #fff;
    }
    .blog-card {
      background-color: #222;
      border: none;
      border-radius: 10px;
      overflow: hidden;
    }
    .blog-card img {
      height: 200px;
      object-fit: cover;
    }
    .blog-title {
      font-size: 1.2rem;
      font-weight: bold;
    }
    .blog-meta {
      color: #bbb;
      font-size: 0.9rem;
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
  <h1 class="mb-4">News</h1>
  <div class="row">
    <div class="col-md-4 mb-4">
      <div class="card blog-card">
        <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Blog Image">
        <div class="card-body">
          <p class="blog-meta">15 July, 2022 | 0 comments</p>
          <h5 class="blog-title">Remote collaboration, digital twins, and the metaverse</h5>
          <p class="card-text">Suspendisse posuere, diam in bibendum lobortis, turpis ipsum dictum arcu...</p>
          <a href="#" class="btn btn-warning">Read More</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card blog-card">
        <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Blog Image">
        <div class="card-body">
          <p class="blog-meta">15 May, 2022 | 0 comments</p>
          <h5 class="blog-title">There’s another wireless technology choice for IoT</h5>
          <p class="card-text">Donec tellus nulla, rutrum id elit ut, feugiat lacus. Congue eget...</p>
          <a href="#" class="btn btn-warning">Read More</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card blog-card">
        <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Blog Image">
        <div class="card-body">
          <p class="blog-meta">15 March, 2022 | 0 comments</p>
          <h5 class="blog-title">Our 4K close-up video series highlights</h5>
          <p class="card-text">Turpis et aliquam erat elit. Aliquam at dolor sed faucibus...</p>
          <a href="#" class="btn btn-warning">Read More</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card blog-card">
        <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Blog Image">
        <div class="card-body">
          <p class="blog-meta">15 May, 2022 | 0 comments</p>
          <h5 class="blog-title">Embedded forecast: Better hardware</h5>
          <p class="card-text">Vestibulum faucibus nulla sit amet mi malesuada facilisis...</p>
          <a href="#" class="btn btn-warning">Read More</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card blog-card">
        <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Blog Image">
        <div class="card-body">
          <p class="blog-meta">15 April, 2022 | 0 comments</p>
          <h5 class="blog-title">Security must be top priority</h5>
          <p class="card-text">Sed mauris pellentesque elit aliquam ut lacus facilisis...</p>
          <a href="#" class="btn btn-warning">Read More</a>
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-4">
      <div class="card blog-card">
        <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Blog Image">
        <div class="card-body">
          <p class="blog-meta">15 March, 2022 | 0 comments</p>
          <h5 class="blog-title">The complexities of electronic design</h5>
          <p class="card-text">Vestibulum faucibus nulla sit amet mi malesuada facilisis...</p>
          <a href="#" class="btn btn-warning">Read More</a>
        </div>
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

