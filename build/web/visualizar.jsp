<%@ page import="controle.PedidoControle" %>
<%@ page import="model.Pedido" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Visualizar Pedido - Pizzaria Padrinos</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Visualizar Pedido</h1>
        </header>

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            PedidoControle controle = new PedidoControle();
            Pedido pedido = controle.visualizarPedido(id);
        %>

        <div class="details">
            <p><strong>ID:</strong> <%= pedido.getId() %></p>
            <p><strong>Cliente:</strong> <%= pedido.getCliente() %></p>
            <p><strong>Pizza:</strong> <%= pedido.getPizza() %></p>
            <p><strong>Quantidade:</strong> <%= pedido.getQuantidade() %></p>
            <p><strong>Total:</strong> <%= pedido.getTotal() %></p>
        </div>

        <a href="index.jsp"><button class="btn btn-back">Voltar para Lista de Pedidos</button></a>
    </div>
</body>
</html>
