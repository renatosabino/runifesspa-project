package br.edu.unifesspa.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import br.edu.unifesspa.model.Recarga;
import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.persistence.RecarregarRepository;

@WebServlet("/pages/recarregar-servlet")
public class RecarregarServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		session = req.getSession();

		double valor = Double.parseDouble(req.getParameter("valor-recarga").replace(',', '.'));
		double saldo = (double) session.getAttribute("saldo");
		double valorRecarga = saldo + valor;

		Usuario usuario = (Usuario) req.getSession().getAttribute("user");

		new RecarregarRepository(JPAUtil.getEntityManager()).updateRecarga(usuario.getRecarga().getId(), valorRecarga);

		Recarga recarga = new RecarregarRepository(JPAUtil.getEntityManager())
				.recuperarRecarga(usuario.getRecarga().getId());

		session.removeAttribute("saldo");
		session.setAttribute("saldo", recarga.getValor());

		resp.sendRedirect("ticketpage.jsp");
	}

}
