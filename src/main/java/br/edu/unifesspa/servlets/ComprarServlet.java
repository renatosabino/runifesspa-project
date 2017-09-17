package br.edu.unifesspa.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pages/comprar-servlet")
public class ComprarServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String tUsuario = req.getParameter("tipo-usuario");
		String tRefeicao = req.getParameter("tipo-refeicao");
		
		resp.sendRedirect("ticketpage.jsp");
		
	}

}
