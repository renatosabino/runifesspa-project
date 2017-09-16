package br.edu.unifesspa.recover;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

import br.edu.unifesspa.model.DadosPessoais;
import br.edu.unifesspa.model.Usuario;

public class RecoverUsuario 
{
	private EntityManager manager;
		
	public RecoverUsuario(EntityManager manager) 
	{
		this.manager = manager;
	}
	
	public Usuario recoverUsuario(String login, String senha) 
	{
		manager.getTransaction().begin();
		
		Usuario usuario = null;
		try {
		 usuario = manager.createNamedQuery("Usuario.buscaPorUsuario", Usuario.class).
				setParameter("user", login).setParameter("senha", senha).getSingleResult();
				
		System.out.println("Email: " + usuario.getDadosPessoais().getEmail() + "\n|> Nome" +
				usuario.getDadosPessoais().getNome());
		}
		catch (NoResultException e) 
		{
			usuario = null;
		}
		
	//	System.out.println("Teste " + usuario.getId() + " " + usuario.getUser() + " " + usuario.getSenha());
	//	System.out.println("Buscando...");
	//	Usuario usuario = manager.find(Usuario.class, 1L);
	//  System.out.println(usuario.getUser());
		
		
		manager.close();
		return usuario;		
	}
}