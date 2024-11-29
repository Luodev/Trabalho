package controle;

import dao.PedidoDAO;
import java.sql.SQLException;
import model.Pedido;


import java.util.List;

public class PedidoControle {

    private PedidoDAO pedidoDAO;

    public PedidoControle() throws SQLException {
        this.pedidoDAO = new PedidoDAO();
    }

    public void incluirPedido(Pedido pedido) {
        pedidoDAO.incluirPedido(pedido);
    }

    public void excluirPedido(int id) {
        pedidoDAO.excluirPedido(id);
    }

    public void alterarPedido(Pedido pedido) {
        pedidoDAO.alterarPedido(pedido);
    }

    public Pedido visualizarPedido(int id) {
        return pedidoDAO.visualizarPedido(id);
    }

    public List<Pedido> listarPedidos() {
        return pedidoDAO.listarPedidos();
    }
}
