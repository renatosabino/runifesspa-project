package br.edu.unifesspa.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.unifesspa.model.Pedidos;
import br.edu.unifesspa.persistence.AdminRepository;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.persistence.PedidoRepository;

@WebServlet("/admin/admin-servlet")
public class AdminServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String codTicket = req.getParameter("cod-ticket");
		session = req.getSession();

		new AdminRepository(JPAUtil.getEntityManager()).validarTicket(codTicket);
		
		List<Pedidos> list = new PedidoRepository(JPAUtil.getEntityManager()).recoverAll();
		
		session.removeAttribute("pedidos");
		session.setAttribute("pedidos", list);
		
		resp.sendRedirect("admin.jsp");
	}
}
