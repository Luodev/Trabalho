package dao;

import model.Pedido;
import util.Conexao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PedidoDAO {

    private Connection conexao;

    public PedidoDAO() throws SQLException {
        this.conexao = Conexao.getConnection();
    }

    // Incluir pedido
    public void incluirPedido(Pedido pedido) {
        String sql = "INSERT INTO pedidos (cliente, pizza, quantidade, total) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            stmt.setString(1, pedido.getCliente());
            stmt.setString(2, pedido.getPizza());
            stmt.setInt(3, pedido.getQuantidade());
            stmt.setDouble(4, pedido.getTotal());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public boolean excluirPedido(int idPedido) {
    boolean sucesso = false;
    String sql = "DELETE FROM pedidos WHERE id = ?";

    try (Connection conn = Conexao.getConnection();
         PreparedStatement stmt = conn.prepareStatement(sql)) {


        stmt.setInt(1, idPedido);


        int linhasAfetadas = stmt.executeUpdate();
        sucesso = (linhasAfetadas > 0);
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return sucesso;
}

    public boolean alterarPedido(Pedido pedido) {
        boolean sucesso = false;
        String sql = "UPDATE pedidos SET nome_cliente = ?, descricao = ?, valor = ? WHERE id = ?";

        try (Connection conn = Conexao.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, pedido.getCliente());
            stmt.setString(2, pedido.getPizza());
            stmt.setInt(3, pedido.getQuantidade());
            stmt.setDouble(3, pedido.getTotal());
            stmt.setInt(4, pedido.getId()); 

            int linhasAfetadas = stmt.executeUpdate();
            sucesso = (linhasAfetadas > 0); 
        } catch (SQLException e) {
            e.printStackTrace();
    }
    return sucesso;
}


    public Pedido visualizarPedido(int id) {
        String sql = "SELECT * FROM pedidos WHERE id = ?";
        try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Pedido(rs.getInt("id"), rs.getString("cliente"), rs.getString("pizza"),
                        rs.getInt("quantidade"), rs.getDouble("total"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public List<Pedido> listarPedidos() {
        List<Pedido> pedidos = new ArrayList<>();
        String sql = "SELECT * FROM pedidos";
        try (Statement stmt = conexao.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                pedidos.add(new Pedido(rs.getInt("id"), rs.getString("cliente"), rs.getString("pizza"),
                        rs.getInt("quantidade"), rs.getDouble("total")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pedidos;
    }
}
