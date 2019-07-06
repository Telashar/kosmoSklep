    <%@ taglib prefix="list" uri="http://www.springframework.org/tags/form" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <title>Products</title>
        </head>
        <body>
        <h2>Pets</h2>


        <c:if test="${empty products}">
            <h3>Sorry, no records found... :(</h3>
        </c:if>



        <c:forEach items="${products}" var="pet">
            Name: ${product.name} <br/>
            Price: ${product.price} <br/>
            Description: ${product.escription} <br/>
            Available: ${product.available} <br/>

            <a href="/product/edit/${product.id}">Edit</a>
            <a href="/product/delete/${product.id}">Delete</a>
            <a href="/product/create/${product.id}">Create</a>
            <br/><br/><br/>
        </c:forEach>
        </body>
        </html>