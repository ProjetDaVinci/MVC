<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="css/StyleM.css">

    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body style="background-image: url(https://images.drive.ru/i/0/5ebbd66dec05c4e873000022.jpg);background-size: 100%;">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" style="font-size: 38px;" href="index.html">Lorenco</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link " href="#">Главная</a>
            <a class="nav-item nav-link" href="#">Услуги</a>
            <a class="nav-item nav-link" href="#">Контакты</a>
            <a class="nav-item nav-link" href="#">О нас</a>
            <a class="nav-item nav-link " href="#">Отзывы</a>
            <a class="nav-item nav-link active" href="#">Подбор</a>
        </div>
    </div>
</nav>
<div class="ass" >
    <div class="p1">Найдем детали для вашего автомобиля</div>

    <form  id="autoshop" method="post">
        <div class="form-group mb-4">
            <label for="Brand" class="form-label"><h1>Ваш автомобиль</h1></label>
            <input type="text" class="form-control" id="Brand" placeholder="Марка" name="Brand">
        </div>
        <div class="form-group mb-4">
            <input type="text" class="form-control" id="Model" placeholder="Модель" name="Model">
        </div>
        <div class="form-group mb-4">
            <input type="text" class="form-control" id="Year" placeholder="Год выпуска" name="Year">
        </div>
        <div class="form-group mb-4">
            <input type="text" class="form-control" id="Liter" placeholder="Литраж двигателя" name="Liter">
        </div>
        <div class="form-group mb-4">
            <input type="text" class="form-control" id="Color" placeholder="Цвет кузова" name="Color">
        </div>
        <button type="submit" class="btn btn-primary">Отправить</button>
        <input type="button" class="btn btn-warning" onclick="document.location.href = 'LEST.jsp'" value="Получить"/>
        <script src="JS/send.js"> </script>
    </form>
    <input type="button" class="btn btn-warning" onclick="document.location.href = 'Update.jsp'" value="Изменить"/>
    <input type="button" class="btn btn-warning" onclick="document.location.href = 'Delete.jsp'" value="Удалить"/>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



</body>
</html>
