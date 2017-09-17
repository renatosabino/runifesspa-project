package br.edu.unifesspa.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unifesspa.model.Recarga;
import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.persistence.RecarregarRepository;
import br.edu.unifesspa.utils.DateTimeUtil;

@WebServlet("/pages/recarregar-servlet")
public class RecarregarServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		double valor = Double.parseDouble(req.getParameter("valor-recarga"));
		
		Usuario usuario = (Usuario) req.getSession().getAttribute("user");
		
		Recarga recarga = new RecarregarRepository(JPAUtil.getEntityManager()).recuperarRecarga(usuario.getRecarga().getId());
		new RecarregarRepository(JPAUtil.getEntityManager()).
			updateRecarga(usuario.getRecarga().getId(), recarga.getValor() + valor);
		
		resp.sendRedirect("ticketpage.jsp");
	}

}
