<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado do Cadastro</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
        }
            
        h2{
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

        .resultados {
            width: 300px;
            padding: 10px;
            margin-bottom: 10px; 
            border-radius: 5px;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
   <div class="container">
    <div class="container">
    <h2>Resultado do Cadastro</h2>
    <%
        String nome = request.getParameter("nome");
        int idade = Integer.parseInt(request.getParameter("idade"));
        String sexo = request.getParameter("sexo");
        double peso = Double.parseDouble(request.getParameter("peso"));
        double altura = Double.parseDouble(request.getParameter("altura")) / 100; // Convertendo de cm para m
        double imc = peso / (altura * altura);
        DecimalFormat df = new DecimalFormat("#.##");
    %>
    <div class="resultados">Nome: <%= nome %></div>
    <div class="resultados">Idade: <%= idade %></div>
    <div class="resultados">Sexo: <%= sexo %></div>
    <div class="resultados">Peso: <%= peso %></div>
    <div class="resultados">Altura: <%= altura %></div>
    <div class="resultados">Índice de Massa Corporal: <%= df.format(imc) %></div>
</div>
</html>
