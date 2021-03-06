package br.edu.unifesspa.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.unifesspa.model.Usuario;

@WebFilter("/admin/*")
public class AdminFilter implements Filter {

	private String path;

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;

		HttpSession session = request.getSession();
		
		Usuario usuario = (Usuario) session.getAttribute("user");

		if (usuario != null && usuario.getNivel() == 1) {
			chain.doFilter(req, resp);
		} else {
			response.sendRedirect(this.path + "/login.jsp");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		path = filterConfig.getServletContext().getContextPath();
	}

}
