$(function (){
    let param = {};
    let request = new XMLHttpRequest();
    var OutputArray = [];
    var x = new Boolean(true);

    $('#autoshop').submit(function (e){
        e.preventDefault();

        param.Brand = $("#Brand").val();
        param.Model = $("#Model").val();
        param.Year = $("#Year").val();
        param.Liter = $("#Liter").val();
        param.Color = $("#Color").val();

        let jsonFile = JSON.stringify(param);

        request.onreadystatechange = function (){
            if (this.readyState === 4 && this.status === 200) {
                const input = this.responseText;
                // тоже самое что и function(string) return Json.pe()
                OutputArray = input.split(/(?<=\})(?=\{)/).map(string => JSON.parse(string));
            }
        };
        request.open("GET","create");
        request.setRequestHeader("param","application/json");
        request.send(jsonFile);
    });
});