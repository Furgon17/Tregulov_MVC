<%--
  Created by IntelliJ IDEA.
  User: grako
  Date: 14.11.2023
  Time: 09:50
  To change this template use File | Settings | File Templates.
--%>
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
</body>
</html>
