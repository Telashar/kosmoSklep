    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <title>Edit product</title>
        </head>
        <body>
        <h2>Edit product form</h2>
        <form:form action="/product/edit/${product.user.id}" method="POST" modelAttribute="product">
            Name: <form:input path="name"/> <br />
            Price: <form:input path="Price"/> <br />
            Description: <form:input path="description"/> <br />
            Available: <form:input path="available"/> <br />
            <form:hidden path="id" />
            <input type="submit" value="Save"/>
        </form:form>
        </body>
        </html>