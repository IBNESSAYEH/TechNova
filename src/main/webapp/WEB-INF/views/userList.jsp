<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h1>User List</h1>
<a href="${pageContext.request.contextPath}/user-new">Add New User</a>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Email</th>
        <th>First Name</th>
        <th>Last Name</th>

        <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.email}</td>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>
                <a href="/${user.id}/user-edit">Edit</a>
                <a href="/${user.id}/user-delete">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>