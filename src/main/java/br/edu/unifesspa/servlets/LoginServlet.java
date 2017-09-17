package br.edu.unifesspa.servlets;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.persistence.EntityManager;
import javax.servlet.annotation.WebServlet;
import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
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

		// System.out.println(new
		// PedidoRepository(JPAUtil.getEntityManager()).recoverPedido(1L).getTipoPedido());
		//
		// Pedidos pedidos = new Pedidos();
		// pedidos.setTipoPedido(2);
		// pedidos.setDataPedido(new Date(2017, 9, 2));
		// pedidos.setUsuario(usuario);
		// pedidos.setHorarioPedido(new Date());
		// pedidos.setValidatorPedido("ok");
		//
		// new PedidoRepository(JPAUtil.getEntityManager()).savePedido(pedidos);

		if (usuario != null) {
			session = req.getSession();
			session.setAttribute("id", usuario.getId());
			session.setAttribute("user", usuario.getUser());
			session.setAttribute("nivel", usuario.getNivel());
			session.setAttribute("dadosUsuario", usuario.getDadosPessoais());
			session.setMaxInactiveInterval(10 * 15);
			resp.sendRedirect("index.jsp");
		} else {
			resp.sendRedirect("login.jsp");
		}
	}
}