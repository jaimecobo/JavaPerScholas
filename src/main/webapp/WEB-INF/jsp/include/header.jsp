<%--
  Created by IntelliJ IDEA.
  User: jaime
  Date: 7/25/2024
  Time: 9:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html xmlns:th="http://www.thymeleaf.org">--%>
<html>
<head>
    <link rel="stylesheet" href="/pub/css/global.css">
<%--        <link rel="stylesheet" href="../../../pub/css/global.css">--%>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<%--    <title>Title</title>--%>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/#"></a>
                </li>

<%--                <li class="nav-item dropdown">--%>
<%--                    <a class="nav-link dropdown-toggle" href="/employee/create-employee" id="navbarDropdownEmployees" role="button" data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                        Employee--%>
<%--                    </a>--%>
<%--                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                        <li><a class="dropdown-item" href="/employee/employees">Search employee</a></li>--%>
<%--                        <li><hr class="dropdown-divider"></li>--%>
<%--                        <li><a class="dropdown-item" href="/employee/create-employee">Create employee</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>


                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/user/create-user" id="navbarDropdownUsers" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        User
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/user/users">Search user</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="/user/create-user">Create user</a></li>
                        <%--                        <li><hr class="dropdown-divider"></li>--%>
                        <%--                        <li><a class="dropdown-item" href="/option3/create-option3">create option3</a></li>--%>
                        <%--                        <li><hr class="dropdown-divider"></li>--%>
                        <%--                        <li><a class="dropdown-item" href="/option3/edit-option3">Edit option3</a></li>--%>
                    </ul>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/city/create-city" id="navbarDropdownCities" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        City
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/city/cities">Search city</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="/city/create-city">Create city</a></li>
<%--                        <li><hr class="dropdown-divider"></li>--%>
<%--                        <li><a class="dropdown-item" href="/option3/create-option3">create option3</a></li>--%>
                        <%--                        <li><hr class="dropdown-divider"></li>--%>
                        <%--                        <li><a class="dropdown-item" href="/option3/edit-option3">Edit option3</a></li>--%>
                    </ul>
                </li>


                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/event/create-event" id="navbarDropdownEvents" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Event
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/event/events">Search event</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="/event/create-event">Create event</a></li>
                        <%--                        <li><hr class="dropdown-divider"></li>--%>
                        <%--                        <li><a class="dropdown-item" href="/option3/create-option3">create option3</a></li>--%>
                        <%--                        <li><hr class="dropdown-divider"></li>--%>
                        <%--                        <li><a class="dropdown-item" href="/option3/edit-option3">Edit option3</a></li>--%>
                    </ul>
                </li>



                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item">
                        <a class="btn btn-outline-primary" href="/account/loginPageUrl">Login</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <a class="btn btn-outline-danger" href="/account/logout">Logout</a>
                    </li>
                    <li class="nav-item">
                        <span class="nav-link"><sec:authentication property="name"/></span>
                    </li>
                </sec:authorize>

                <sec:authorize access="hasAnyAuthority('ADMIN')">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/dashboard">Admin Dashboard</a>
                    </li>
                </sec:authorize>


            </ul>

            <form class="d-flex" action="/option5/option5Detailsbyid">
                <input class="form-control me-2" type="search" placeholder="Search option5 by id" aria-label="Search"
                       value="${option5Id}" id="option5Id"
                       name="orderId"
                       placeholder="Enter option5 detail id"/>
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

        </div>
    </div>
</nav>
