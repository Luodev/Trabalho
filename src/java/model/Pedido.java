package model;

public class Pedido {
    private int id;
    private String cliente;
    private String pizza;
    private int quantidade;
    private double total;

    public Pedido(int id, String cliente, String pizza, int quantidade, double total) {
        this.id = id;
        this.cliente = cliente;
        this.pizza = pizza;
        this.quantidade = quantidade;
        this.total = total;
    }

 
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getPizza() {
        return pizza;
    }

    public void setPizza(String pizza) {
        this.pizza = pizza;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
}
