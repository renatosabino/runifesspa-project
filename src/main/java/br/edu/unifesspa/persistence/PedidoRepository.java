package br.edu.unifesspa.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import br.edu.unifesspa.model.Pedidos;

public class PedidoRepository {
	private EntityManager manager;

	public PedidoRepository(EntityManager manager) {
		this.manager = manager;
	}

	public void savePedido(Pedidos pedidos) {
		manager.getTransaction().begin();
		manager.persist(pedidos);
		
		manager.getTransaction().commit();
		manager.close();
	}

	public Pedidos recoverPedido(Long id) {
		manager.getTransaction().begin();
		Pedidos pedido = null;
		pedido = manager.find(Pedidos.class, id);
		manager.close();
		return pedido;
	}

	public List<Pedidos> recoverAll() {
		TypedQuery<Pedidos> query = manager.createQuery("SELECT p FROM Pedidos p", Pedidos.class);
		List<Pedidos> pedidos = query.getResultList();
		return pedidos;
	}
}