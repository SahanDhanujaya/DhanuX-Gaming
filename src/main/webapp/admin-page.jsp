<%@ page import="lk.ijse.dhanux_gaming.dto.UserDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Dhanujaya(Dhanu)
  Date: 24/01/2025
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Add Page</title>
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
        .profile-picture {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            background-color: #333333;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #ffffff;
            font-size: 1.5rem;
        }
        table {
            background-color: #1e1e1e;
            color: #ffffff;
        }
        th, td {
            border: 1px solid #333333;
        }
    </style>
</head>
<body>
<nav>
    <a href="dashboard.jsp"><img style="width: 25px;margin: 5px" src="assets/icons/icons8-back-64.png" alt=""></a>
</nav>
<div class="container p-4">
    <div class="row">
        <!-- Form Section -->
        <div class="col-md-6">
            <div class="card p-4">
                <h5 class="card-title">Add New User</h5>
                <form action="admin-page" method="POST" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address" name="address" placeholder="Enter address" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
                    </div>
                    <div class="mb-3">
                        <label for="mobile" class="form-label">Mobile</label>
                        <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter mobile number" required>
                    </div>
                    <div class="mb-3">
                        <label for="userType" class="form-label">User Type</label>
                        <select class="form-select" id="userType" name="userType" required>
                            <option value="admin">Admin</option>
                            <option value="editor">Editor</option>
                            <option value="viewer">Viewer</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="profilePic"></label>
                        <input type="file" id="profilePic" name="image">
                    </div>
                    <input type="submit" class="btn w-100" value="Add User">
                </form>
            </div>
        </div>


        <a href="adminList">LoadTable</a>
    <!-- Table Section -->
    <div class="row mt-4">
        <div class="col-12">
            <div class="card p-4">
                <h5 class="card-title">Admins List</h5>
                <%
                    List<UserDto> users = new ArrayList<>();
                    List<UserDto> users1 = (List<UserDto>) request.getAttribute("users");//line 2
                    users.add(new UserDto("dhanu","kandy","dhanu@gmailo.com","0773645354",12233,"","WIN_20240808_19_32_36_Pro.jpg"));
                    if (users == null || users.isEmpty()) {
                %>
                <p>No users available to display.</p>
                <%
                }else {
                        for (UserDto userDto: users) {

                %>
                <table class="table table-dark table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>User Type</th>
                        <th>Profile</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>#</td>
                        <td><%=userDto.getName()%></td>
                        <td><%=userDto.getEmail()%></td>
                        <td><%=userDto.getMobile()%></td>
                        <td><%=userDto.getUserType()%></td>
                        <td><img src="<%=userDto.getProfilePicture()%>" width="20px" height="30px"></td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
