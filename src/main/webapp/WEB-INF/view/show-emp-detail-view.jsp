

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
</head>

<body>
<h2>
    Dear employee, you are WELCOME!!!
</h2>
<br>
<br>
<br>
<%--Your name: ${param.employeeName}--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Phone number: ${employee.phoneNumber}
<br><br>
Email: ${employee.email}
<br><br>
Language(s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>
            ${lang}
        </li>
    </c:forEach>
</ul>
</body>
</html>
