<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Dashboard</title>
    <style>
        .create-listing-btn {
            position: fixed;
            top: 20px;
            right: 20px;
        }
        
            .grid-container {
        display: grid;
        grid-template-columns: repeat(5, 1fr); /* Creates 5 columns */
        gap: 10px; /* Adds space between grid items */
    }
    .grid-item {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: center;
        }
            .pagination {
        text-align: center; 
        margin-top: 20px; 
    }

    .pagination a {
        display: inline-block; 
        margin-right: 10px;
        text-decoration: none; 
        padding: 5px 10px; 
        border: 1px solid #ddd; 
        color: #333;
        font-size: 18px; 
    }

    .pagination a:hover {
        border-color: #999; 
    }

    /* Style for the current page */
    .pagination .current-page {
        font-weight: bold; 
        border-color: #333; 
    }
    }
    </style>
</head>
<body>
    <h1>Welcome, ${username}!</h1>
    <div>
       <!--  <img src="/images/image1.jpg" alt="Image 1" style="width:100px;height:100px;">
        <img src="/images/image2.jpg" alt="Image 2" style="width:100px;height:100px;">
        <img src="/images/image3.jpg" alt="Image 3" style="width:100px;height:100px;"> -->


         <!-- Display Listings -->
        <div class="grid-container">
            <c:forEach items="${paginationResult.results}" var="listing">
                <div class="grid-item">
                    <h2>${listing.title}</h2>
                    <p>${listing.description}</p>
                    <img src="${pageContext.request.contextPath}/uploads/listings/${listing.imageUrl}" alt="${listing.title}" style="width:100px;height:100px;">
                </div>
            </c:forEach>
        </div>

<!-- Pagination Links -->
<c:if test="${paginationResult.totalPages > 1}">
    <div class="pagination">
        <c:forEach begin="0" end="${paginationResult.totalPages - 1}" var="pageNum">
            <a href="?page=${pageNum}" class="${pageNum == paginationResult.currentPage ? 'current-page' : ''}">
                ${pageNum + 1}
            </a> 
        </c:forEach>
    </div>
</c:if>
    </div>

    <a href="${pageContext.request.contextPath}/listings/create" class="create-listing-btn">
        <button>Create Listing</button>
    </a>
</body>
</html> --%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
    <style>
        body, h1, h2, h3, h4, h5, h6 {
            font-family: "Karma", sans-serif
        }

        .w3-bar-block .w3-bar-item {
            padding: 20px
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(5, 1fr); /* Creates 5 columns */
            gap: 10px; /* Adds space between grid items */
        }

        .grid-item {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
             transition: border 0.3s ease;
        }
        
        .grid-item:hover {
    border: 2px solid #000; 
    cursor: pointer; 
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

        .pagination {
            text-align: center;
            margin-top: 20px;
        }

        .pagination a {
            display: inline-block;
            margin-right: 10px;
            text-decoration: none;
            padding: 5px 10px;
            border: 1px solid #ddd;
            color: #333;
            font-size: 18px;
        }

        .pagination a:hover {
            border-color: #999;
        }

        /* Style for the current page */
        .pagination .current-page {
            font-weight: bold;
            border-color: #333;
        }
    </style>
    

</head>
<body>

<!-- Top menu -->
<div class="w3-top">
    <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
        <div class="w3-bar">
            <a href="${pageContext.request.contextPath}/logout" class="w3-bar-item w3-button w3-padding-large w3-hover-black">Logout</a>
            <div class="w3-center w3-padding-16"></div>
            <a href="${pageContext.request.contextPath}/listings/create" class="w3-bar-item w3-button w3-padding-large w3-hover-black w3-right">Create Listing</a>
        </div>
    </div>
</div>

<!-- Page Content -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">

    <h1 class="w3-center">Welcome, ${fullName}!</h1>

    <!-- Display Listings -->
    <div class="grid-container">
<c:forEach items="${paginationResult.results}" var="listing">
    <div class="grid-item" onclick="location.href='${pageContext.request.contextPath}/listings/${listing.id}'">

        <h2>${listing.title}</h2>
        <p>${listing.description}</p>
        <!-- Assuming you store the path to the image in the imageUrl field -->
        <img src="${pageContext.request.contextPath}/uploads/listings/${listing.imageUrl}" alt="${listing.title}" style="width:100px;height:100px;">
    </div>
</c:forEach>
    </div>



    <!-- Pagination Links -->
    <c:if test="${paginationResult.totalPages > 1}">
        <div class="pagination">
            <c:forEach begin="0" end="${paginationResult.totalPages - 1}" var="pageNum">
                <a href="?page=${pageNum}"
                   class="${pageNum == paginationResult.currentPage ? 'current-page' : ''}">
                    ${pageNum + 1}
                </a>
            </c:forEach>
        </div>
    </c:if>

</div>

</body>
</html>