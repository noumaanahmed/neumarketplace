<!-- listingsuccess.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Listing Success</title>
    <style>
        .back-button {
            display: block;
            margin-top: 20px;
            padding: 10px 20px;
            text-align: center;
            background-color: #f8f9fa;
            border: 1px solid #dcdcdc;
            color: #333;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <c:if test="${success}">
        <h2>Listing added successfully</h2>
    </c:if>
    <c:if test="${!success}">
        <h2>Failed to create listing</h2>
    </c:if>
    <button onclick="history.back()" class="back-button">Go Back</button>
</body>
</html>
