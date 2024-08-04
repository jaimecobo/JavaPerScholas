<%--
  Created by IntelliJ IDEA.
  User: jaime
  Date: 7/25/2024
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>

<section style="background-color:lightblue">
    <h1 class="page-title text-center">User details</h1>
</section>

<table class="table table-striped">
    <tr><td><b>ID</b></td><td>${userKey.id}</td></tr>
    <tr><td><b>Username</b></td><td>${userKey.username}</td></tr>
    <tr><td><b>Email</b></td><td>${userKey.email}</td></tr>
    <tr><td><b>Brand/Nickname/Company</b></td><td>${userKey.brandNicknameCompany}</td></tr>
    <tr><td><b>First name</b></td><td>${userKey.firstName}</td></tr>
    <tr><td><b>Last name</b></td><td>${userKey.lastName}</td></tr>
    <tr><td><b>Gender</b></td><td>${userKey.gender}</td></tr>
    <tr><td><b>Phone number</b></td><td>${userKey.phone}</td></tr>
    <tr><td><b>Address</b></td><td>${userKey.address}</td></tr>
    <tr><td><b>City</b></td><td>${userKey.city}</td></tr>
    <tr><td><b>State/Province/Department/Territory</b></td><td>${userKey.state}</td></tr>
    <tr><td><b>Zip Code</b></td><td>${userKey.zipCode}</td></tr>
    <tr><td><b>Country</b></td><td>${userKey.country}</td></tr>
    <tr><td><b>Password</b></td><td>${userKey.password}</td></tr>
    <tr><td><b>Creation date</b></td><td>${userKey.createdAt}</td></tr>
    <tr><td><b>Profile image</b></td><td><img src="${userKey.userImageUrl}"/></td></tr>
    <tr><td></td><td><a href="${pageContext.request.contextPath}/user/edit-user?userId=${userKey.id}">edit by @RequestParam</a></td></tr>
</table>















<jsp:include page="../include/footer.jsp"/>