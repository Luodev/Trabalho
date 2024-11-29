<%@ page import="controle.PedidoControle" %>
<%@ page import="model.Pedido" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Incluir Pedido - Pizzaria Padrinos</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Incluir Novo Pedido</h1>
        </header>

        <form action="incluir.jsp" method="post" class="form">
            <label for="cliente">Cliente:</label>
            <input type="text" name="cliente" id="cliente" required><br>

            <label for="pizza">Pizza:</label>
            <input type="text" name="pizza" id="pizza" required><br>

            <label for="quantidade">Quantidade:</label>
            <input type="number" name="quantidade" id="quantidade" required><br>

            <label for="total">Total:</label>
            <input type="number" name="total" id="total" required><br>

            <input type="submit" value="Incluir Pedido" class="btn btn-submit">
        </form>

        <%
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                String cliente = request.getParameter("cliente");
                String pizza = request.getParameter("pizza");
                int quantidade = Integer.parseInt(request.getParameter("quantidade"));
                double total = Double.parseDouble(request.getParameter("total"));

                Pedido pedido = new Pedido(0, cliente, pizza, quantidade, total);
                PedidoControle controle = new PedidoControle();
                controle.incluirPedido(pedido);
                out.println("<p class='success'>Pedido incluído com sucesso!</p>");
            }
        %>

        <a href="index.jsp"><button class="btn btn-back">Voltar para Lista de Pedidos</button></a>
    </div>
</body>
</html>
