<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Conversão de Medidas</title>
    <style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: #f0f0f0;
        font-family: Arial, sans-serif;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
        color: #333;
    }

    label {
        font-weight: bold;
        color: #333;
    }

    select, input {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 20px;
        border-radius: 4px;
        border: 1px solid #ddd;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>
    <form action="resultado.jsp" method="post">
        <h2>Conversão de Medidas</h2>
        <label for="tipoConversao">Tipo de Conversão:</label>
        <select id="tipoConversao" name="tipoConversao">
            <option value="Comprimento">Comprimento</option>
            <option value="Massa">Massa</option>
            <option value="Temperatura">Temperatura</option>
        </select>
        <br>
        <label for="unidadeAtual">Unidade Atual:</label>
        <select id="unidadeAtual" name="unidadeAtual">
            <option value="Quilometro">Quilometro</option>
            <option value="Metro">Metro</option>
            <option value="Centimetro">Centimetro</option>
            <option value="Milimetro">Milimetro</option>
            <option value="Tonelada">Tonelada</option>
            <option value="Quilograma">Quilograma</option>
            <option value="Grama">Grama</option>
            <option value="Miligrama">Miligrama</option>
            <option value="Celsius">Celsius</option>
            <option value="Fahrenheit">Fahrenheit</option>
            <option value="Kelvin">Kelvin</option>
        </select>
        <br>
        <label for="valor">Valor:</label>
        <input type="text" id="valor" name="valor">
        <br>
        <label for="unidadeDesejada">Unidade Desejada:</label>
        <select id="unidadeDesejada" name="unidadeDesejada">
            <option value="Quilometro">Quilometro</option>
            <option value="Metro">Metro</option>
            <option value="Centimetro">Centimetro</option>
            <option value="Milimetro">Milimetro</option>
            <option value="Tonelada">Tonelada</option>
            <option value="Quilograma">Quilograma</option>
            <option value="Grama">Grama</option>
            <option value="Miligrama">Miligrama</option>
            <option value="Celsius">Celsius</option>
            <option value="Fahrenheit">Fahrenheit</option>
            <option value="Kelvin">Kelvin</option>
        </select>
        <br>
        <input type="submit" value="Converter">
    </form>
</body>
</html>
