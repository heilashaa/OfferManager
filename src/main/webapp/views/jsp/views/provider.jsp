<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="card mt-5">
    <div class="card-body">
        <h4 class="header-title">Providers</h4>
        <form class="needs-validation" novalidate="" method="get" action="${pageContext.request.contextPath}/provider">
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label for="validationCustom01">Provider</label>
                    <input name="provider" type="text" class="form-control" id="validationCustom01" placeholder="Provider" value="" autocomplete="off">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label for="validationCustom02">Country</label>
                    <input name="country" type="text" class="form-control" id="validationCustom02" placeholder="Country" value="" autocomplete="off">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label for="validationCustom03">Description</label>
                    <input name="description" type="text" class="form-control" id="validationCustom03" placeholder="Description" value="" autocomplete="off">
                </div>
            </div>
            <button class="btn btn-warning" type="submit">Submit</button>
        </form>
    </div>
</div>


<%--<form:form action="/provider/add" method="post" commandName="provider">--%>
    <%--<table>--%>
        <%--<c:if test="${!empty person.name}">--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="id">--%>
                        <%--<spring:message text="ID"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="id" readonly="true" size="8"  disabled="true" />--%>
                    <%--<form:hidden path="id" />--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:if>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="name">--%>
                    <%--<spring:message text="Name"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="name" />--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="country">--%>
                    <%--<spring:message text="Country"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="country" />--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<c:if test="${!empty person.name}">--%>
                    <%--<input type="submit"--%>
                           <%--value="<spring:message text="Edit Person"/>" />--%>
                <%--</c:if>--%>
                <%--<c:if test="${empty person.name}">--%>
                    <%--<input type="submit"--%>
                           <%--value="<spring:message text="Add Person"/>" />--%>
                <%--</c:if>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form:form>--%>
<%--<br>--%>
<%--<h3>Persons List</h3>--%>
<%--<c:if test="${!empty listPersons}">--%>
    <table class="tg">
        <tr>
            <th width="80">Provider ID</th>
            <th width="120">Description</th>
            <th width="120">Country</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listProviders}" var="provider">
            <tr>
                <td>${provider.description}</td>
                <td>${provider.description}</td>
                <td>${provider.country}</td>
                <td><a href="<c:url value='/edit/${provider.id}' />" >Edit</a></td>
                <td><a href="<c:url value='/remove/${provider.id}' />" >Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<%--</c:if>--%>
