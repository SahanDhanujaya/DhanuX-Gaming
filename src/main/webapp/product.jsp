<%@ page import="lk.ijse.dhanux_gaming.dto.ProductDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="lk.ijse.dhanux_gaming.entity.Product" %><%--
  Created by IntelliJ IDEA.
  User: Dhanujaya(Dhanu)
  Date: 23/01/2025
  Time: 01:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Add Form - Dark Mode</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #333333;
            color: #ffffff;
        }
        .card {
            background-color: #1e1e1e;
            border: none;
        }
        .card-header {
            background-color:#1e1e1e;
        }
        .form-control, .form-select {
            background-color: #333;
            color: #ffffff;
            border: 1px solid #555;
        }
        .form-control:focus, .form-select:focus {
            background-color: #444;
            border-color: #007bff;
            color: white;
        }
        table {
            background-color: #1e1e1e;
        }
        thead {
            background-color: #333;
        }
        tbody tr:hover {
            background-color: #333333;
        }
        img.img-thumbnail {
            background-color: #444;
            border-color: #555;
        }
    </style>
</head>
<body>
<nav>
    <a href="dashboard.jsp"><img style="width: 25px;margin: 5px" src="assets/icons/icons8-back-64.png" alt=""></a>
</nav>
<div class="container mt-5">
    <!-- Form Section -->
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg">
                <div class="card-header text-white text-center">
                    <h2>Add Product</h2>
                </div>
                <div class="card-body">
                    <form action="product" method="post" enctype="multipart/form-data" style="color: white" id="productForm">
                        <div  class="mb-3">
                            <label for="productName" class="form-label">Product Name</label>
                            <input type="text" style="color: white" class="form-control" id="productName" name="product" placeholder="Enter product name" required>
                        </div>
                        <div class="mb-3">
                            <label for="description" class="form-label">Description</label>
                            <textarea class="form-control" id="description" name="description" rows="3" placeholder="Enter product description" required></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="price" class="form-label">Price</label>
                            <input type="number" class="form-control" id="price" name="price" placeholder="Enter price" required>
                        </div>
                        <div class="mb-3">
                            <label for="qty" class="form-label">Quantity</label>
                            <input type="number" class="form-control" id="qty" name="qty" placeholder="Enter quantity" required>
                        </div>
                        <div class="mb-3">
                            <label for="category" class="form-label">Category</label>
                            <select class="form-select" id="category" name="category" required>
                                <option selected disabled>Choose category</option>
                                <option value="Racing">Racing</option>
                                <option value="Shooting">Shooting</option>
                                <option value="Mini">Mini</option>
                                <option value="Adventure">Adventure</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="productImage" class="form-label">Product Image</label>
                            <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Add Product</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Table Section -->
    <div class="row mt-5">
        <div class="col">
            <h3 class="text-center">Product List</h3>

            <table class="table table-dark table-bordered table-hover">

                <thead class="text-center">
                <tr>
                    <th>#</th>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Category</th>
                    <th>Image</th>
                </tr>
                </thead>
                <tbody id="productTableBody" class="text-center">
                <%
                    List<ProductDto> productDtoList = (List<ProductDto>) request.getAttribute("products");
                    if (!productDtoList.isEmpty()){
                        for (ProductDto productDto: productDtoList) {
                            int i = 0;
                %>
                <tr>
                    <td><%=++i%></td>
                    <td><%=productDto.getProductName()%></td>
                    <td><%=productDto.getDescription()%></td>
                    <td><%=productDto.getPrice()%></td>
                    <td><%=productDto.getQty()%></td>
                    <td><%=productDto.getCategory()%></td>
                    <td><img src="<%=productDto.getProfilePicture()%>" width="100px" height="100px" alt="product pic"></td>
                </tr>
                <%
                        }
                    } else {

                %>
                <h1>Nothing data</h1>
                <%
                    }
                %>
                <!-- Dynamic rows will be added here -->
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script>
    $('#productTableBody').DataTable().ajax.reload();
</script>
</body>
</html>
