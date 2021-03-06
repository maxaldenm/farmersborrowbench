<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300&display=swap" rel="stylesheet">
    <title>accountOverview</title>
</head>
<body>
<nav>
    <div class="logo">
        <a href="home">
            <img class="logoImg" src="${pageContext.request.contextPath}/images/FBBLogo.jpg" alt="LOGO">
        </a>
        <h4 class="logoText">Farmer's Borrow Bench</h4>
    </div>
    <ul class="nav-links">
        <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/goBackToAccountOverview">Account</a></li>
        <li><a href="${pageContext.request.contextPath}/goToContact">Contact</a></li>
        <li><a href="${pageContext.request.contextPath}/about">About</a></li>
        <li><a href="${pageContext.request.contextPath}/goToLogout">Logout</a></li>
    </ul>
    <div class="burger">
        <div class="line1"></div>
        <div class="line2"></div>
        <div class="line3"></div>
    </div>
</nav>

<main>
    <h2>Customer Overview FBB</h2>
    <em>Welcome ${sessionScope.user.fname} ${sessionScope.user.getsuffix()} ${sessionScope.user.lname}</em>

    <div class="accountOverviewButtons">
        <a class="userInformation opmaakAccountOverview" href="${pageContext.request.contextPath}/getTopAccountBalance">
            <h4>Top 10 Account Balance</h4>
        </a>
        <a class="addNewAccount opmaakAccountOverview" href="#">
            <h4>Top 10 Transactions</h4></a>
        <a class="editAccountInformation opmaakAccountOverview" href="#">
            <h4>Highest Balance</h4>
        </a>
        <a class="linkNewUserToAccount opmaakAccountOverview" href="#">
            <h4>reserve</h4>
        </a>
    </div>
    <!-- accountOverviewButtons -->
    <div class="overviewPanel"><!-- overview panel -->
        <c:if test="${!empty(sortedAccountList)}">
            <c:forEach var="account" items="${sortedAccountList}">
                <div class="topBalance">
                        ${account.balance}
                </div>
                <div class="topIban">
                        ${account.accountNumber}
                </div>
            </c:forEach>
        </c:if>
    </div>
</main>
<script src="${pageContext.request.contextPath}/js/app.js"></script>
</body>
</html>

