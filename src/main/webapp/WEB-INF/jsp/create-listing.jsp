<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html lang="en">
<head>
    <title>Create Listing</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        .wrap {
            max-width: 500px; 
            margin: 0 auto; 
        }
        .login-wrap {
            width: 100%;
        }
    </style>
</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
                <h2 class="heading-section">Create Your Listing</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-10">
                <div class="wrap">
                    <div class="login-wrap p-4 p-md-5">
                     <c:if test="${not empty successMessage}">
                            <div class="alert alert-success" role="alert">
                                ${successMessage}
                            </div>
                            <c:remove var="successMessage" scope="session"/>
                            <!-- Button to go back to the dashboard -->
                            <a href="${pageContext.request.contextPath}/dashboard" class="btn btn-primary">Go to Dashboard</a>
                       
      
                        </c:if>

                        <c:if test="${not empty errorMessage}">
                            <div class="alert alert-danger" role="alert">
                                ${errorMessage}
                            </div>
                            <c:remove var="errorMessage" scope="session"/>
                        </c:if>
                        <div></div>
                        <form action="${pageContext.request.contextPath}/listings/create" method="post" enctype="multipart/form-data" class="signin-form">
                            <div class="form-group mb-3">
                                <label class="label" for="title">Title</label>
                                <input type="text" id="title" name="title" class="form-control" placeholder="Title" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="description">Description</label>
                                <textarea id="description" name="description" class="form-control" placeholder="Description" required></textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="price">Price ($)</label>
                                <input type="number" id="price" name="price" step="0.01" class="form-control" placeholder="Price" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="category">Category</label>
                                <select id="category" name="category" class="form-control" required>
                                    <option value="Electronics">Electronics</option>
                                    <option value="Books">Books</option>
                                    <option value="Clothing">Clothing</option>
                                    <option value="Furniture">Furniture</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="itemCondition">Condition</label>
                                <select id="itemCondition" name="itemCondition" class="form-control" required>
                                    <option value="New">New</option>
                                    <option value="Used">Used</option>
                                    <option value="Refurbished">Refurbished</option>
                                </select>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="image">Image</label>
                                <input type="file" id="image" name="image" class="form-control" accept="image/*">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-primary rounded submit px-3">Create Listing</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
