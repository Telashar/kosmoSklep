    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <title>Edit user</title>
        </head>
        <body>
        <h2>Edit user form</h2>
        <form:form action="/user/edit/${user.id}" method="POST" modelAttribute="user">
            First name: <form:input path="firstName"/> <br />
            Last name: <form:input path="lastName"/> <br />
            Email: <form: input path="email"/> <br />
            Password: <form: input path="password"/> <br />
            Address: <form:input path="streetAddress1"/> <br />
            Address: <form:input path="streetAddress2"/> <br />
            City: <form:input path="city"/> <br />
            Postal Code: <form:input path="postalCode"/> <br />
            State: <form:input path="state"/> <br />
            Country: <form:input path="country"/> <br />
            <form:hidden path="id" />
            <input type="submit" value="Save"/>
        </form:form>
        </body>
        </html>