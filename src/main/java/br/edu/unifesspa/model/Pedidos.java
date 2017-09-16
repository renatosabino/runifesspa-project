package br.edu.unifesspa.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Pedidos {
	private long id;
	private Date dataPedido;
	private Date horarioPedido;
	private int tipoPedido;
	private String validatorPedido;
	private Usuario usuario;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	@Column(name = "ped_data")
	@Temporal(TemporalType.DATE)
	public Date getDataPedido() {
		return dataPedido;
	}

	public void setDataPedido(Date dataPedido) {
		this.dataPedido = dataPedido;
	}
	
	@Column(name = "ped_horario")
	public Date getHorarioPedido() {
		return horarioPedido;
	}

	public void setHorarioPedido(Date horarioPedido) {
		this.horarioPedido = horarioPedido;
	}
	
	@Column(name = "ped_tipo")
	public int getTipoPedido() {
		return tipoPedido;
	}

	public void setTipoPedido(int tipoPedido) {
		this.tipoPedido = tipoPedido;
	}
	
	@Column(name = "ped_validator")
	public String getValidatorPedido() {
		return validatorPedido;
	}

	public void setValidatorPedido(String validatorPedido) {
		this.validatorPedido = validatorPedido;
	}
	
	@ManyToOne
	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pedidos other = (Pedidos) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
}
