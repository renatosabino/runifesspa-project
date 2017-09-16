package br.edu.unifesspa.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.recover.RecoverUsuario;

@WebServlet("/login-servlet")
public class LoginServlet extends HttpServlet
{	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String login = req.getParameter("username");
		String pass = req.getParameter("pass");
		
		System.err.println(login + " " + pass);
		
		EntityManager manager = JPAUtil.getEntityManager();
		
		if (new RecoverUsuario(manager).recoverUsuario(login, pass) == null) 
		{
			resp.getWriter().println("Erro");
		}else
		
		resp.sendRedirect("index.jsp");
	}
}
