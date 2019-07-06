    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <title>User</title>
        </head>
        <body>
        <h2>User</h2>


        <c:if test="${empty users}">
            <h3>Sorry, no records found... :(</h3>
        </c:if>



        <c:forEach items="${user}" var="user">
            First name: ${user.firstName} <br/>
            Last name: ${user.lastName} <br/>
            Email: ${user.email} <br/>
            Password: ${user.password} <br/>
            Address: ${user.streetAddress1} <br/>
            Address: ${user.streetAddress2} <br/>
            City: ${user.city} <br/>
            Postal Code: ${user.postalCode} <br/>
            State: ${user.state} <br/>
            Country: ${user.country} <br/>
            <a href="/user/edit/${user.id}">Edit</a>
            <a href="/user/delete/${user.id}">Delete</a>
            <a href="/product/create/${user.id}">Add product</a>
            <br/><br/><br/>
        </c:forEach>
        </body>
        </html>