package br.edu.unifesspa.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unifesspa.persistence.AdminRepository;
import br.edu.unifesspa.persistence.JPAUtil;

@WebServlet("/admin/admin-servlet")
public class AdminServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String codTicket = req.getParameter("cod-ticket");
		
		new AdminRepository(JPAUtil.getEntityManager()).validarTicket(codTicket);
	}

}
