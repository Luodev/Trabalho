<%@ page import="java.util.List" %>
<%@ page import="controle.PedidoControle" %>
<%@ page import="model.Pedido" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pizzaria Padrinos - Pedidos</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <header>
            <h1>Pedidos - Pizzaria Padrinos</h1>
            <a href="incluir.jsp"><button class="btn btn-primary">Incluir Novo Pedido</button></a>
        </header>

        <h2>Lista de Pedidos</h2>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Cliente</th>
                    <th>Pizza</th>
                    <th>Quantidade</th>
                    <th>Total</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <%
                    PedidoControle controle = new PedidoControle();
                    List<Pedido> pedidos = controle.listarPedidos();
                    for (Pedido pedido : pedidos) {
                %>
                <tr>
                    <td><%= pedido.getId() %></td>
                    <td><%= pedido.getCliente() %></td>
                    <td><%= pedido.getPizza() %></td>
                    <td><%= pedido.getQuantidade() %></td>
                    <td><%= pedido.getTotal() %></td>
                    <td>
                        <a href="visualizar.jsp?id=<%= pedido.getId() %>" class="btn btn-view">Visualizar</a>
                        <a href="alterar.jsp?id=<%= pedido.getId() %>" class="btn btn-edit">Alterar</a>
                        <a href="excluir.jsp?id=<%= pedido.getId() %>" class="btn btn-delete">Excluir</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
