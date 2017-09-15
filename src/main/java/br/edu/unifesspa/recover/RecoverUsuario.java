package br.edu.unifesspa.recover;

import javax.persistence.EntityManager;

import br.edu.unifesspa.model.DadosPessoais;
import br.edu.unifesspa.model.Usuario;

public class RecoverUsuario 
{
	private EntityManager manager;
		
	public RecoverUsuario(EntityManager manager) 
	{
		this.manager = manager;
	}
	
	public void recoverUsuario(String login, String senha) 
	{
		manager.getTransaction().begin();
				
		Usuario usuario = manager.
				createQuery("select u from Usuario u where u.user = :user and u.senha = :senha", 
				Usuario.class).setParameter("user", login).setParameter("senha", senha).
				getSingleResult();
		
		System.out.println("|> ID: " + usuario.getId());
		
		DadosPessoais dadosPessoais = (DadosPessoais) manager.
				createQuery("select d.email from DadosPessoais, "
						+ "Usuario u where d.usuario.id = :u.id").getSingleResult(); 
						
		
		System.out.println(dadosPessoais.getEmail());
		
		//System.out.println("Teste " + usuario.getId() + " " + usuario.getUser() + " " + usuario.getSenha());
	//	System.out.println("Buscando...");
	//	Usuario usuario = manager.find(Usuario.class, 1L);
	//  System.out.println(usuario.getUser());
		
		
		manager.close();
	}
}