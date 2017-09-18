package br.edu.unifesspa.servlets;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.unifesspa.model.Pedidos;
import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.persistence.PedidoRepository;
import br.edu.unifesspa.persistence.UsuarioRepository;

@WebServlet("/login-servlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String login = req.getParameter("username");
		String pass = req.getParameter("pass");

		EntityManager manager = JPAUtil.getEntityManager();

		Usuario usuario = new UsuarioRepository(manager).recoverUsuario(login, pass);

		if (usuario != null && usuario.getNivel() == 0) {
			session = req.getSession();
			session.setAttribute("user", usuario);
			session.setAttribute("saldo", usuario.getRecarga().getValor());
			session.setMaxInactiveInterval(10 * 30);
			resp.sendRedirect("pages/ticketpage.jsp");
		} else if (usuario != null && usuario.getNivel() == 1){
			List<Pedidos> list = new PedidoRepository(JPAUtil.getEntityManager()).recoverAll();
			session = req.getSession();
			session.setAttribute("user", usuario);
			session.setMaxInactiveInterval(10 * 30);
			session.setAttribute("pedidos", list);
			resp.sendRedirect("admin/admin.jsp");
		} else {
			resp.sendRedirect("login.jsp");
		}
	}
}