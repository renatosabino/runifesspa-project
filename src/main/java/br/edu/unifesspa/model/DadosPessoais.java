package br.edu.unifesspa.model;

import java.util.Date;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.OneToOne;
import javax.persistence.NamedQuery;
import javax.persistence.CascadeType;
import javax.persistence.TemporalType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@NamedQuery(name="DadosPessoais.buscaPorDadosPessoais",
query="SELECT u FROM DadosPessoais u WHERE u.usuario = :usuario")
@Entity
public class DadosPessoais 
{
	private long id;
	private String nome;
	private String matricula;
	private String email;
	private String telefone;
	private String rg;
	private String cpf;
	private Date date;
	private Usuario usuario;

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

	@Column(name = "dado_nome" , length = 60, nullable = false)
	public String getNome() 
	{
		return nome;
	}

	public void setNome(String nome) 
	{
		this.nome = nome;
	}

	@Column(name = "dado_matricula", length = 12, nullable = false)
	public String getMatricula() 
	{
		return matricula;
	}

	public void setMatricula(String matricula) 
	{
		this.matricula = matricula;
	}

	@Column(name = "dado_email", length = 50, nullable = false)
	public String getEmail() 
	{
		return email;
	}

	public void setEmail(String email) 
	{
		this.email = email;
	}

	@Column(name = "dado_telefone", length = 15, nullable = false)
	public String getTelefone() 
	{
		return telefone;
	}

	public void setTelefone(String telefone) 
	{
		this.telefone = telefone;
	}

	@Column(name = "dado_rg", length = 15, nullable = false)
	public String getRg() 
	{
		return rg;
	}

	public void setRg(String rg) 
	{
		this.rg = rg;
	}

	@Column(name = "dado_cpf", length = 14, nullable = false)
	public String getCpf() 
	{
		return cpf;
	}

	public void setCpf(String cpf) 
	{
		this.cpf = cpf;
	}
	
	@Column(name = "dado_dataNasc")
	@Temporal(TemporalType.DATE)
	public Date getDate() 
	{
		return date;
	}

	public void setDate(Date date) 
	{
		this.date = date;
	}
	
	@OneToOne(cascade = CascadeType.ALL)
	public Usuario getUsuario() 
	{
		return usuario;
	}

	public void setUsuario(Usuario usuario) 
	{
		this.usuario = usuario;
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
		DadosPessoais other = (DadosPessoais) obj;
		if (id != other.id)
			return false;
		return true;
	}
}