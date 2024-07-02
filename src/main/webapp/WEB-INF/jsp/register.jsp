<!-- register.jsp -->
<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h2>Register</h2>
    <form action="${pageContext.request.contextPath}/user/register" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Register">
    </form>
</body>
</html> --%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Register</title>
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
                <h2 class="heading-section">Register for NEU Marketplace</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-10">
                <div class="wrap">
                    <div class="login-wrap p-4 p-md-5">
                        <form action="${pageContext.request.contextPath}/user/register" method="post" class="signin-form">
                            <div class="form-group mb-3">
                                <label class="label" for="fullName">Full Name</label>
                                <input type="text" id="fullName" name="fullName" class="form-control" placeholder="Full Name" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="email">Email Address</label>
                                <input type="email" id="email" name="email" class="form-control" placeholder="Email Address" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="username">Username</label>
                                <input type="text" id="username" name="username" class="form-control" placeholder="Username" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="password">Password</label>
                                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="phoneNumber">Phone Number</label>
                                <input type="tel" id="phoneNumber" name="phoneNumber" class="form-control" placeholder="Phone Number">
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="address">Address</label>
                                <input type="text" id="address" name="address" class="form-control" placeholder="Address">
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="dob">Date of Birth</label>
                                <input type="date" id="dob" name="dob" class="form-control">
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="gender">Gender</label>
                                <select id="gender" name="gender" class="form-control">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-primary rounded submit px-3" value="Register">Register</button>
                            </div>
                        </form>
                        <p class="text-center">Already a member? <a href="${pageContext.request.contextPath}/login">Sign In</a></p>
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
