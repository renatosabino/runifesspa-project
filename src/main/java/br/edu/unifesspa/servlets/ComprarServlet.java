package br.edu.unifesspa.servlets;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.unifesspa.model.Pedidos;
import br.edu.unifesspa.model.Recarga;
import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.persistence.PedidoRepository;
import br.edu.unifesspa.persistence.RecarregarRepository;
import br.edu.unifesspa.utils.DateTimeUtil;
import br.edu.unifesspa.utils.GenerateUUID;

@WebServlet("/pages/comprar-servlet")
public class ComprarServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int tRefeicao = Integer.parseInt(req.getParameter("tipo-refeicao"));
		String validator = GenerateUUID.getInstance().generate();
		Usuario usuario = (Usuario) req.getSession().getAttribute("user");
		Recarga recargaAtual = null;

		Pedidos pedidos = new Pedidos();
		pedidos.setTipoPedido(tRefeicao);
		pedidos.setDataPedido(DateTimeUtil.getInstance().getTimeDate());
		pedidos.setUsuario(usuario);
		pedidos.setHorarioPedido(DateTimeUtil.getInstance().getTimeDate());
		pedidos.setValidatorPedido(validator);

		session = req.getSession();
		Double saldo = usuario.getRecarga().getValor();

		if (tRefeicao == 1) {
			if (saldo >= 1) {
				recargaAtual = new RecarregarRepository(JPAUtil.getEntityManager())
						.updateRecarga(usuario.getRecarga().getId(), -1D);
				new PedidoRepository(JPAUtil.getEntityManager()).savePedido(pedidos);
			} else {
				session.removeAttribute("saldo");
				session.setAttribute("saldo", usuario.getRecarga().getValor());
				resp.sendRedirect("ticketpage.jsp");
			}
		} else if (tRefeicao == 2) {
			if (saldo >= 2) {
				recargaAtual = new RecarregarRepository(JPAUtil.getEntityManager())
						.updateRecarga(usuario.getRecarga().getId(), -2D);
				new PedidoRepository(JPAUtil.getEntityManager()).savePedido(pedidos);
			} else {
				session.removeAttribute("saldo");
				session.setAttribute("saldo", usuario.getRecarga().getValor());
				resp.sendRedirect("ticketpage.jsp");
			}
		} else {
			if (saldo >= 3) {
				recargaAtual = new RecarregarRepository(JPAUtil.getEntityManager())
						.updateRecarga(usuario.getRecarga().getId(), -3D);
				new PedidoRepository(JPAUtil.getEntityManager()).savePedido(pedidos);
			} else {
				session.removeAttribute("saldo");
				session.setAttribute("saldo", usuario.getRecarga().getValor());
				resp.sendRedirect("ticketpage.jsp");
			}
		}

		req.setAttribute("cod", validator);
		System.out.println(validator);
		
		if (recargaAtual != null) {
			session.removeAttribute("saldo");
			session.setAttribute("saldo", recargaAtual.getValor());
		}

		req.getRequestDispatcher("../ticket/ticket.jsp").forward(req, resp);
	}

}
