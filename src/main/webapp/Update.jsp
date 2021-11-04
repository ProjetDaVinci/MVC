
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="css/styleM.css">

    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>

<form id="updateForm" method="post" action="${pageContext.request.contextPath}/Name">
    <label>Input name and brand of car you would like to change</label>
    <div class="form-group">
        <label>brand
            <input type="text" class="form-control" id="id" name="id" value="" placeholder="Mingaleev">
        </label>
    </div>
    <label>Input new data of Auto</label>
    <div class="form-group">
        <label>model
            <input type="text" class="form-control" id="model"  placeholder="Ivan" name="model">
        </label>
    </div>
    <div class="form-group">
        <label>brand
            <input type="text" class="form-control" id="brand"  placeholder="Mingaleev" name="brand">
        </label>
    </div>
    <div class="form-group">
        <label>Liter
            <input type="text" class="form-control" id="liter" placeholder="12.12.2021" name="liter">
        </label>
    </div>
    <div class="form-group">
        <label>Year
            <input type="text" class="form-control" id="year" placeholder="vk.com/exapmle" name="year">
        </label>
    </div>
    <div class="form-group">
        <label>Color
            <input type="text" class="form-control" id="color"  placeholder="Your email" name="Color">
        </label>
    </div>
    <input type="submit" class="btn btn-primary" value="Отправить" id=""/>
    <script src="JS/UpdateUser.js"></script>
</form>

</body>
</html>
