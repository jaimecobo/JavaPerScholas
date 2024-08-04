<%--
  Created by IntelliJ IDEA.
  User: jaime
  Date: 7/27/2024
  Time: 5:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<jsp:include page="../include/header.jsp" />

<section style="background-color:lightblue">
    <h1 class="page-title text-center">City details</h1>
</section>

<table class="table table-striped">
    <tr><td><b>ID</b></td><td>${cityKey.id}</td></tr>
    <tr><td><b>City name</b></td><td>${cityKey.name}</td></tr>
    <tr><td><b>State/Province/Department/Territory</b></td><td>${cityKey.stateProvinceDepartmentTerritory}</td></tr>
    <tr><td><b>Country</b></td><td>${cityKey.country}</td></tr>
    <tr><td><b>Slogan</b></td><td>${cityKey.slogan}</td></tr>
    <tr><td><b>Description</b></td><td>${cityKey.description}</td></tr>
    <tr><td><b>City iconic image</b></td><td>${cityKey.cityImageUrl}</td></tr>
    <tr><td><b>City website URL</b></td><td>${cityKey.cityWebUrl}</td></tr>
    <tr><td><b>Creation date</b></td><td>${cityKey.createdAt}</td></tr>
    <tr><td><b>Last edition date</b></td><td>${cityKey.editedDate}</td></tr>
    <tr><td><b>City iconic image</b></td><td><img src="${cityKey.cityImageUrl}"/></td></tr>
    <tr><td><b>Last editor</b></td><td>${userKey.email}</td></tr>
    <tr><td></td><td><a href="${pageContext.request.contextPath}/city/edit-city?cityId=${cityKey.id}">edit by @RequestParam</a></td></tr>
</table>

<jsp:include page="../include/footer.jsp" />
