package br.edu.unifesspa.servlets;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.edu.unifesspa.model.Pedidos;
import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.persistence.PedidoRepository;
import br.edu.unifesspa.utils.DateTimeUtil;
import br.edu.unifesspa.utils.GenerateUUID;

@WebServlet("/pages/comprar-servlet")
public class ComprarServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int tUsuario = Integer.parseInt(req.getParameter("tipo-usuario"));
		int tRefeicao = Integer.parseInt(req.getParameter("tipo-refeicao"));

		Usuario usuario = (Usuario) req.getSession().getAttribute("user");

		Pedidos pedidos = new Pedidos();
		pedidos.setTipoPedido(tRefeicao);
		pedidos.setDataPedido(DateTimeUtil.getInstance().getTimeDate());
		pedidos.setUsuario(usuario);
		pedidos.setHorarioPedido(DateTimeUtil.getInstance().getTimeDate());
		pedidos.setValidatorPedido(GenerateUUID.getInstance().generate());

		new PedidoRepository(JPAUtil.getEntityManager()).savePedido(pedidos);

		resp.sendRedirect("ticketpage.jsp");

	}

}
