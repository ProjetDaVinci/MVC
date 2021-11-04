$(function (){
    let Params = {};
    $("#updateForm").submit(function (e){
        e.preventDefault();

        Params.id = $("#id").val();
        Params.model = $("#model").val();
        Params.brand = $("#brand").val();
        Params.liter = $("#liter").val();
        Params.year = $("#year").val();
        Params.color = $("#color").val();

        let NewUserInfo = JSON.stringify(Params);

        $.post("update",NewUserInfo)
    });
});