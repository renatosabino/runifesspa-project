package br.edu.unifesspa.servlets;

import java.io.IOException;
import java.security.MessageDigest;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.persistence.EntityManager;
import javax.servlet.annotation.WebServlet;

import br.edu.unifesspa.model.Pedidos;
import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.persistence.PedidoRepository;
import br.edu.unifesspa.persistence.UsuarioRepository;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login-servlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String login = req.getParameter("username");
		String pass = req.getParameter("pass");

		System.err.println(login + " " + pass);

		EntityManager manager = JPAUtil.getEntityManager();

		Usuario usuario = new UsuarioRepository(manager).recoverUsuario(login, pass);

		if (usuario != null) {
			session = req.getSession();
			session.setAttribute("user", usuario);
			session.setMaxInactiveInterval(10 * 30);
			req.setAttribute("saldo", usuario.getRecarga().getValor());
			resp.sendRedirect("pages/ticketpage.jsp");
		} else {
			resp.sendRedirect("login.jsp");
		}
	}
}