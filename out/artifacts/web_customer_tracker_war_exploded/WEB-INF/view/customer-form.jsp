<%--
  Created by IntelliJ IDEA.
  User: Alan
  Date: 26.07.2018
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Save Customer</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css" />
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>CRM - CUstomer Relationshp Manager</h2>

        </div>
    </div>

    <div id="container">
        <h3>Save Customer</h3>
        <form:form action="saveCustomer" modelAttribute="customer" method="post">

            <form:hidden path="id" />
            <table>
                <tbody>
                    <tr>
                        <td><label>First Name:</label></td>
                        <td><form:input path="firstName" /> </td>
                    </tr>
                    <tr>
                        <td><label>Last Name:</label></td>
                        <td><form:input path="lastName" /> </td>
                    </tr>
                    <tr>
                        <td><label>Email:</label></td>
                        <td><form:input path="email" /> </td>
                    </tr>
                    <tr>
                        <td><label></label></td>
                        <td><input type="submit" value="Save" class="save" /> </td>
                    </tr>
                </tbody>
            </table>
        </form:form>
        <div style="clear; both;"></div>
        <p>
            <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
        </p>
    </div>
</body>
</html>
