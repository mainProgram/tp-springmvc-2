<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
        <title>Page de connexion</title>
<%--        <link rel="stylesheet" type="text/css"  href="<c:url value="/resources/public/css/style.css" />" />--%>
        <style><%@include file="/WEB-INF/public/css/style.css"%></style>
    </head>
    <body>
        <img src="https://i.postimg.cc/MTRK7Thf/bg-form.jpg" alt="">
        <div class="container">
            <form method="post" action="login">
                <h1 class="">Login</h1>
                <br>
                <div class="input-box">
                    <input type="email" name="email" placeholder="Email">
                </div>

                <div class="input-box">
                    <input type="password" name="password" placeholder="Password">
                </div>

                <button class="btn" type="submit">Login</button>
            </form>
        </div>
    </body>
</html>
