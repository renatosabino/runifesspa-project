package br.edu.unifesspa.persistence;

import javax.persistence.EntityManager;

import br.edu.unifesspa.model.DadosPessoais;

public class UsuarioRepository {
	
	private EntityManager manager;

	public UsuarioRepository(EntityManager manager) {
		this.manager = manager;
	}
	
	public void salvar(DadosPessoais usuario) {
		manager.getTransaction().begin();
		manager.persist(usuario);
		manager.getTransaction().commit();
		manager.close();
	}
	
}
