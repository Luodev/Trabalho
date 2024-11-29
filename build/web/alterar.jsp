<%@ page import="controle.PedidoControle" %>
<%@ page import="model.Pedido" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Alterar Pedido - Pizzaria Padrinos</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Alterar Pedido</h1>
        </header>

        <%
            int id = Integer.parseInt(request.getParameter("id"));
            PedidoControle controle = new PedidoControle();
            Pedido pedido = controle.visualizarPedido(id);
        %>

        <form action="alterar.jsp?id=<%= pedido.getId() %>" method="post" class="form">
            <label for="cliente">Cliente:</label>
            <input type="text" name="cliente" id="cliente" value="<%= pedido.getCliente() %>" required><br>

            <label for="pizza">Pizza:</label>
            <input type="text" name="pizza" id="pizza" value="<%= pedido.getPizza() %>" required><br>

            <label for="quantidade">Quantidade:</label>
            <input type="number" name="quantidade" id="quantidade" value="<%= pedido.getQuantidade() %>" required><br>

            <label for="total">Total:</label>
            <input type="number" name="total" id="total" value="<%= pedido.getTotal() %>" required><br>

            <input type="submit" value="Alterar Pedido" class="btn btn-submit">
        </form>

        <a href="index.jsp"><button class="btn btn-back">Voltar para Lista de Pedidos</button></a>
    </div>
</body>
</html>
