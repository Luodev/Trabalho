<!-- excluir.jsp -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Pedido</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Excluir Pedido</h1>

    <p>Tem certeza de que deseja excluir este pedido?</p>

    <form action="ExcluirPedido" method="POST">
        <input type="hidden" name="id" value="${pedido.id}"> 
        <button type="submit">Excluir</button>
        <a href="index.jsp">Cancelar</a>
    </form>

</body>
</html>

