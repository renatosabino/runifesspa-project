package br.edu.unifesspa.recover;

import br.edu.unifesspa.model.Usuario;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

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

		try 
		{
		 usuario = manager.createNamedQuery("Usuario.buscaPorUsuario", Usuario.class).
				setParameter("user", login).
				setParameter("senha", senha).
				getSingleResult();
		}
		catch (NoResultException e) 
		{
			usuario = null;
			System.out.println("|> Erro: " + e.getMessage());
		}
		
		manager.close();
		
		return usuario;		
	}
}