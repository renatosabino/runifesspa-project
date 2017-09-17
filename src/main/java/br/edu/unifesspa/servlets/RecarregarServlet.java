package br.edu.unifesspa.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pages/recarregar-servlet")
public class RecarregarServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String valor = req.getParameter("valor-recarga");
		
		System.out.println(valor);
		
		resp.sendRedirect("ticketpage.jsp");
	}

}
