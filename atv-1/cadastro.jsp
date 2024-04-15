<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Pessoas</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
        }
            
        h1{
            text-align: center;
            color: #007BFF;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 300px; 
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1); 
        }

        .campos {
            width: 300px;
            padding: 10px;
            margin-bottom: 10px; 
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .btn {
            width: 100%;
            padding: 10px;
            border-radius: 4px;
            border: none;
            color: #fff;
            background-color: #007BFF;
            cursor: pointer;
            text-align: center; 
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Cadastro de Pessoas</h1>
        <form action="resultado.jsp" method="post">
            Nome: <input class="campos" type="text" name="nome"><br>
            Idade: <input class="campos" type="text" name="idade"><br>
            Sexo: <input class="campos" type="text" name="sexo"><br>
            Peso: <input class="campos" type="text" name="peso"><br>
            Altura: <input class="campos" type="text" name="altura"><br>
            <input class="btn" type="submit" value="Enviar">
        </form>
    </div>
</body>
</html>
