package br.edu.unifesspa.persistence;

import javax.persistence.EntityManager;

import br.edu.unifesspa.model.Pedidos;

public class AdminRepository {
	private EntityManager manager;

	public AdminRepository(EntityManager manager) {
		this.manager = manager;
	}

	public boolean validarTicket(String numero) {
		manager.getTransaction().begin();
		Pedidos pedidos = null;
		try {
			pedidos = (Pedidos) manager.createQuery("SELECT n FROM Pedidos n WHERE validatorPedido = :ped")
					.setParameter("ped", numero).getSingleResult();
			manager.remove(pedidos);
			manager.getTransaction().commit();
			manager.close();
			return true;
		} catch (Exception e) {
			manager.close();
			return false;
		}

	}

}
