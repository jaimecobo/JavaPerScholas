<%--
  Created by IntelliJ IDEA.
  User: jaime
  Date: 7/26/2024
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: jaime
  Date: 7/26/2024
  Time: 5:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp" />

<!-- a page header -->
<section style="background-color:lightseagreen">
<div class="container">
    <div class="row pt-5 pb-5">
            <h1 class="text-center">Login page</h1>
    </div>
</div>
</section>


<section>
    <div class="container">
        <div class="row pt-5 ">
            <div class="col-12">
                <form action="/account/loginProcessingURL" method="get">
                    <input type="hidden" name="employeeId" value="${form.employeeId}">

                    <!-- email input -->
                    <div class="row align-items-center justify-content-center">
                        <div class="col-2">
                            <label for="emailId" class="col-form-label">Email</label>
                        </div>
                        <div class="col-4">
                            <input type="text" id="emailId" name="username" class="form-control <c:if test="${bindingResult.hasFieldErrors('email')}">is-invalid</c:if>" value="${form.email}">
                        </div>
                    </div>
                    <c:if test="${bindingResult.hasFieldErrors('email')}">
                        <div class="row align-items-center justify-content-center">
                            <div class="offset-2 col-4">
                                <div class="text-danger">
                                    <c:forEach items="${bindingResult.getFieldErrors('email')}" var="error">
                                        ${error.defaultMessage}<br>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </c:if>

                    <!-- password input field -->
                    <div class="row align-items-center justify-content-center pt-3">
                        <div class="col-2">
                            <label for="passwordId" class="col-form-label">Password</label>
                        </div>
                        <div class="col-4">
                            <input type="password"
                                   id="passwordId"
                                   name="password"
                                   class="form-control"
                                   value="${form.password}">
                        </div>
                    </div>
                    <c:if test="${bindingResult.hasFieldErrors('password')}">
                        <div class="row align-items-center justify-content-center">
                            <div class="offset-2 col-4">
                                <div style="color:red">
                                    <c:forEach items="${bindingResult.getFieldErrors('password')}" var="error">
                                        ${error.defaultMessage}<br>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </c:if>

                    <div class="row justify-content-center pt-3 ">
                        <div class="col-auto text-center">
                            <button type="submit" class="btn btn-primary">Log in</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>


<jsp:include page="../include/footer.jsp" />

