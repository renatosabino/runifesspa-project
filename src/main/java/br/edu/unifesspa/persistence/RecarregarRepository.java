package br.edu.unifesspa.persistence;

import javax.persistence.EntityManager;

import br.edu.unifesspa.model.Recarga;
import br.edu.unifesspa.utils.DateTimeUtil;

public class RecarregarRepository {

	private EntityManager manager;

	public RecarregarRepository(EntityManager manager) {
		this.manager = manager;
	}

	public void realizarRecarga(Recarga recarga) {
		manager.getTransaction().begin();
		manager.persist(recarga);
		manager.getTransaction().commit();
		manager.close();
	}

	public Recarga recuperarRecarga(int id)
	{
		manager.getTransaction().begin();
		Recarga recarga = manager.find(Recarga.class, id);
		manager.close();
		return recarga;
	}
	
	public Recarga updateRecarga(int id, double valor)
	{
		manager.getTransaction().begin();
		Recarga recarga = manager.find(Recarga.class, id);
		recarga.setValor(recarga.getValor() + valor);
		recarga.setVencimento(DateTimeUtil.getInstance().getValidateRecarga());
		manager.getTransaction().commit();
		manager.close();
		return recarga;
	}
}
