$(function(){
    let Params = {};
    $("#autoshop").submit(function(e){
        e.preventDefault();
        Params.Brand= $("#Brand").val();
        Params.Model= $("#Model").val();
        Params.Year= $("#Year").val();
        Params.Liter= $("#Liter").val();
        Params.Color= $("#Color").val();
        let jsonString = JSON.stringify(Params);

        $.post("Create", jsonString);
        alert("Send to server successfully.");
    });
});
