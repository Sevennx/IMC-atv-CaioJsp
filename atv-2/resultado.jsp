<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultado da Conversão</title>
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
            color: #555;
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
    <%
        String tipoConversao = request.getParameter("tipoConversao");
        String unidadeAtual = request.getParameter("unidadeAtual");
        double valor = Double.parseDouble(request.getParameter("valor"));
        String unidadeDesejada = request.getParameter("unidadeDesejada");
        double resultado = 0;

        if (tipoConversao.equals("Comprimento")) {
        
            if (unidadeAtual.equals("Quilometro")) {
                if (unidadeDesejada.equals("Metro")) {
                    resultado = valor * 1000;
                } else if (unidadeDesejada.equals("Centimetro")) {
                    resultado = valor * 100000;
                } else if (unidadeDesejada.equals("Milimetro")) {
                    resultado = valor * 1000000;
                }
            } else if (unidadeAtual.equals("Metro")) {
                if (unidadeDesejada.equals("Quilometro")) {
                    resultado = valor / 1000;
                } else if (unidadeDesejada.equals("Centimetro")) {
                    resultado = valor * 100;
                } else if (unidadeDesejada.equals("Milimetro")) {
                    resultado = valor * 1000;
                }
            }

        } else if (tipoConversao.equals("Massa")) {
            
            if (unidadeAtual.equals("Kilograma")) {
                if (unidadeDesejada.equals("Grama")) {
                    resultado = valor * 1000;
                } else if (unidadeDesejada.equals("Miligrama")) {
                    resultado = valor * 1000000;
                }
            } else if (unidadeAtual.equals("Grama")) {
                if (unidadeDesejada.equals("Kilograma")) {
                    resultado = valor / 1000;
                } else if (unidadeDesejada.equals("Miligrama")) {
                    resultado = valor * 1000;
                }
            }

        } else if (tipoConversao.equals("Temperatura")) {
            
            if (unidadeAtual.equals("Celsius")) {
                if (unidadeDesejada.equals("Fahrenheit")) {
                    resultado = valor * 9/5 + 32;
                } else if (unidadeDesejada.equals("Kelvin")) {
                    resultado = valor + 273.15;
                }
            } else if (unidadeAtual.equals("Fahrenheit")) {
                if (unidadeDesejada.equals("Celsius")) {
                    resultado = (valor - 32) * 5/9;
                } else if (unidadeDesejada.equals("Kelvin")) {
                    resultado = (valor - 32) * 5/9 + 273.15;
                }
            }

        }

        out.println("O resultado da conversão é :" + resultado + " " + unidadeDesejada);
    %>
</body>
</html>
