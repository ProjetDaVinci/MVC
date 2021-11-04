<%--
  Created by IntelliJ IDEA.
  User: Konstantin
  Date: 10.05.2021
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="scc/style2.css">
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>

<form method="post" action="${pageContext.request.contextPath}/delete">
<label>Input name and surname of car you would like to change</label>
<div class="form-group">
    <label>Name
        <input type="text" class="form-control" name="id" placeholder="id" >
    </label>
</div>
<input type="submit" class="btn btn-primary" value="Подтвердить"/>
</form>
</body>
</html>
