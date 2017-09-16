package br.edu.unifesspa.model;

import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@NamedQuery(name="Usuario.buscaPorUsuario",
query="SELECT u FROM Usuario u WHERE u.user = :user AND u.senha = :senha")
@Entity
public class Usuario 
{
	private long id;
	private String user;
	private String senha;
	private int nivel;
	private DadosPessoais dadosPessoais;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getId() 
	{
		return id;
	}

	public void setId(long id) 
	{
		this.id = id;
	}

	@Column(length = 30, nullable = false)
	public String getUser() 
	{
		return user;
	}

	public void setUser(String user) 
	{
		this.user = user;
	}

	@Column(length = 16, nullable = false)
	public String getSenha() 
	{
		return senha;
	}

	public void setSenha(String senha) 
	{
		this.senha = senha;
	}

	@OneToOne(mappedBy = "usuario")
	public DadosPessoais getDadosPessoais() 
	{
		return dadosPessoais;
	}

	public void setDadosPessoais(DadosPessoais dadosPessoais) 
	{
		this.dadosPessoais = dadosPessoais;
	}
	
	@Column(length = 1, nullable = false)
	public int getNivel() 
	{
		return nivel;
	}

	public void setNivel(int nivel) 
	{
		this.nivel = nivel;
	}

	@Override
	public int hashCode() 
	{
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
	
		return result;
	}

	@Override
	public boolean equals(Object obj) 
	{
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		if (id != other.id)
			return false;
		return true;
	}

}
