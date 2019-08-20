<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%!
float operacao(){
    String operacao = request.getParameter("operacao");
//    String operacao = session.getAttribute("operacao");    
    float valor1 = Float.parseFloat(request.getParameter("valor1"));
    float valor2 = Float.parseFloat(request.getParameter("valor2"));
    float resultado = 0;

    switch(operacao){
        case "+":
            resultado = valor1 + valor2;
            break;
        case "-":
            resultado = valor1 - valor2;
            break;
        case "*":
            resultado = valor1 * valor2;
            break;
        case "/":
            resultado = valor1 / valor2;
            break;
    }
    return resultado;
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>
    </head>
    <body>
        Valor 1: 
        <input required type="number" name="valor1"><br/>
        Valor 2:
        <input required type="number" name="valor2"><br/>
        Operação:
        <select name = "operacao">
            <option value="+" selected="">+</option> 
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select><br> 
        <input type="submit" value="Calcular" name="calcular" onclick="operacao()"/><br>
        Expressão:
        ${resultado}
    </body>
</html>
