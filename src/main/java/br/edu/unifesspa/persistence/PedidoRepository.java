package br.edu.unifesspa.persistence;

import javax.persistence.EntityManager;
import br.edu.unifesspa.model.Pedidos;

public class PedidoRepository 
{
	private EntityManager manager;
	
	public PedidoRepository(EntityManager manager) 
	{
		this.manager = manager;
	}
	
	public void savePedido(Pedidos pedidos) 
	{
		manager.getTransaction().begin();
		manager.persist(pedidos);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public Pedidos recoverPedido(Long id) 
	{
		manager.getTransaction().begin();
		
		Pedidos pedido = null;
		
		pedido = manager.find(Pedidos.class, id);
		
		manager.close();
		
		return pedido;
	}
}