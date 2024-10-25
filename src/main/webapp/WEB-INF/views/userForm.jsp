<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
</head>
<body>
<h1>User Form</h1>

<form action="${pageContext.request.contextPath}/" method="post">

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    <br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <br>
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" required>
    <br>
    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" required>
    <br>

    <button type="submit">Submit</button>
</form>

<a href="${pageContext.request.contextPath}/">Cancel</a>
</body>
</html>