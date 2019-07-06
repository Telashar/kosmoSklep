    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <title>Create product</title>
        </head>
        <body>
        <h2>Create product form</h2>
        <form:form action="/product/create" method="POST" modelAttribute="product">
            Name: <form:input path="name"/> <br />
            Price: <form:input path="price"/> <br />
            Description: <form:input path="description"/> <br />
            Available: <form:input path="available"/> <br />
            <input type="submit" value="create"/>
        </form:form>
        </body>
        </html>