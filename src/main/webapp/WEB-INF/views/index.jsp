<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h1 class="text-center my-4">User Management</h1>

    <div class="card mb-4">
        <div class="card-header">
            Add New User
        </div>
        <div class="card-body">
            <form action="save" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
                </div>
                <button type="submit" class="btn btn-primary">Add User</button>
            </form>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            User List
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalUpdate${user.id}" onclick="populateModal(${user.id}, '${user.name}', '${user.email}')">
                                Update
                            </button>

                            <form action="delete" method="post" style="display: inline;">
                                <input type="hidden" name="id" value="${user.id}">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>

                        </td>

                        <!-- Modal update -->
                        <div class="modal fade" id="modalUpdate${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Update User</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form id="updateForm${user.id}" action="update" method="post">
                                            <input type="hidden" name="id" value="${user.id}">
                                            <div class="mb-3">
                                                <label for="name${user.id}" class="form-label">Name</label>
                                                <input type="text" class="form-control" id="name${user.id}" name="name" value="${user.name}" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="email${user.id}" class="form-label">Email</label>
                                                <input type="email" class="form-control" id="email${user.id}" name="email" value="${user.email}" required>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary" onclick="document.getElementById('updateForm${user.id}').submit();">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>