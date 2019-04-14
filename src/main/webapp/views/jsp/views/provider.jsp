<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div class="card mt-5">
    <div class="card-body">
        <h4 class="header-title">Providers</h4>
        <form:form modelAttribute="provider" method="post" action="/provider">
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <form:input path="id" id="id" type="hidden"/>
                    <label for="provider">Provider</label>
                    <form:input path="provider" name="provider" type="text" class="form-control" id="provider" placeholder="Provider"  autocomplete="off"/>
                    <span class="text-danger"><form:errors path="provider"/></span>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="description">Description</label>
                    <form:input path="description" name="description" type="text" class="form-control" id="description" placeholder="Description" autocomplete="off"/>
                    <span class="text-danger"><form:errors path="description"/></span>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="country">Country</label>
                    <form:input path="country" name="country" type="text" class="form-control" id="country" placeholder="Country"  autocomplete="off"/>
                    <span class="text-danger"><form:errors path="country"/></span>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="contact">Contact</label>
                    <form:input path="contact" name="contact" type="text" class="form-control" id="contact" placeholder="contact"  autocomplete="off"/>
                    <span class="text-danger"><form:errors path="contact"/></span>
                </div>
            </div>
            <c:if test="${empty provider.provider}">
                <button class="btn btn-warning" type="submit">Add</button>
            </c:if>
            <c:if test="${!empty provider.provider}">
                <button class="btn btn-warning" type="submit">Save changes</button>
            </c:if>
        </form:form>
    </div>
</div>
<div class="col-lg-12 mt-5">
    <div class="card-body">
            <c:if test="${!empty listProviders}">
            <h4 class="header-title">Providers set</h4>
            <div class="single-table">
                <div class="table-responsive">
                    <table class="table table-hover text-center table-sm">
                        <thead class="text-uppercase bg-secondary">
                        <tr class="text-white">
                            <th scope="col">Provider</th>
                            <th scope="col">Description</th>
                            <th scope="col">Country</th>
                            <th scope="col">Contact</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listProviders}" var="provider">
                        <tr>
                            <td scope="row" class="text-left">${provider.provider}</td>
                            <td scope="row" class="text-left">${provider.description}</td>
                            <td scope="row" class="text-left">${provider.country}</td>
                            <td scope="row" class="text-left">${provider.contact}</td>
                            <td>
                                <ul class="d-flex justify-content-center">
                                    <li class="mr-3"><a href="/provider/edit/${provider.id}" class="text-secondary"><i class="fa fa-edit "></i></a></li>
                                    <li><a href="/provider/delete/${provider.id}" class="text-secondary"><i class="ti-trash text-warning"></i></a></li>
                                </ul>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            </c:if>
            <c:if test="${empty listProviders}">
            <h3>No providers</h3>
            </c:if>
        </div>
</div>
