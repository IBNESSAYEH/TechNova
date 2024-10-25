<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
</head>
<body>
<h1>User Edit Form</h1>

<form action="${pageContext.request.contextPath}/user-edit" method="post">
    <input type="hidden" id="id" name="id" value="${user.id}">

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${user.email}" required>
    <br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" value="${user.password}" required>
    <br>
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" value="${user.firstName}" required>
    <br>
    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" value="${user.lastName}" required>
    <br>

    <button type="submit">Submit</button>
</form>

<a href="${pageContext.request.contextPath}/">Cancel</a>
</body>
</html>