<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Listing Details</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        .wrap {
            max-width: 500px;
            margin: 20px auto;
        }

        .details-wrap {
            width: 100%;
            padding: 4em;
            background: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .details-item {
            margin-bottom: 1em;
        }

        .details-item img {
            max-width: 100%;
            height: auto;
        }

        .back-to-list {
            color: #fff;
            background: #57b846;
            padding: 10px 20px;
            display: inline-block;
            border-radius: 5px;
            margin-top: 20px;
            text-decoration: none;
        }

        .back-to-list:hover {
            background: #4a9e37;
            
            
.details-item img {
    max-width: 50%;
    height: auto;
    display: block;
    margin: 0 auto;
}
}
        }
    </style>
</head>
<body>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center mb-5">
                <h2 class="heading-section">Listing Details</h2>
            </div>
        </div>
        <div class="wrap">
            <div class="details-wrap">
                <div class="details-item">
                    <img src="${pageContext.request.contextPath}/uploads/listings/${listing.imageUrl}" alt="${listing.title}" class="item-image">
                    <h3>${listing.title}</h3>
                    <p><strong>Description:</strong> ${listing.description}</p>
                    <p><strong>Price:</strong> $${listing.price}</p>
                    <p><strong>Category:</strong> ${listing.category}</p>
                    <p><strong>Condition:</strong> ${listing.itemCondition}</p>
                     <p><strong>Listed by:</strong> ${listing.user.fullName}</p>
    <p><strong>Contact:</strong> ${listing.user.phoneNumber}</p>
                  
                </div>
                <br><br>
                <a href="${pageContext.request.contextPath}/dashboard" class="back-to-list">Back to listings</a>
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
