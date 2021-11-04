function showOutputArray(OutputArray) {
    let ParamsToOut = {};
    $("#header").append("<th>Brand</th> <th>Model</th> <th>Year</th> <th>Liters</th> <th>Color</th>");
    for (let i = 0; i < OutputArray.length; i++) {
        ParamsToOut = OutputArray[i];

        $("#tbody").append("<tr>");
        for(var item in ParamsToOut){
            $("#tbody").append("<td>" + ParamsToOut[item]+"</td>");
        }
        $("#tbody").append("</tr>");
    }
}
