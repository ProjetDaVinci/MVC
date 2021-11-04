<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Data list</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
  <link rel="stylesheet" href="css/style2.css">
</head>
<body>
<div class="container">

  <table class="table" id="#infoTable">
    <thead>
    <tr id="header"></tr>
    </thead>
    <tbody id="tbody"> </tbody>
    <script src="JS/OutputInfo2.js"></script>
    <script src="JS/GetInfo.js"></script>
  </table>

  <div class="button_cantainer">
    <input type="button" class="btn btn-primary" id="GetInfoButton"  value="Получить"/>
  </div>

</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</html>