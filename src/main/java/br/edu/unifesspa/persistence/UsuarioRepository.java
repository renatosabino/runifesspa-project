package br.edu.unifesspa.persistence;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

import br.edu.unifesspa.model.DadosPessoais;
import br.edu.unifesspa.model.Recarga;
import br.edu.unifesspa.model.Usuario;

public class UsuarioRepository 
{
	
	private EntityManager manager;

	public UsuarioRepository(EntityManager manager) 
	{
		this.manager = manager;
	}
	
	public void salvarUsuario(DadosPessoais usuario, Recarga recarga) 
	{
		manager.getTransaction().begin();
		manager.persist(usuario);
		manager.persist(recarga);
		manager.getTransaction().commit();
		manager.close();
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