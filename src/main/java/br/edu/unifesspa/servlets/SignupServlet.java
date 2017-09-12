package br.edu.unifesspa.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.unifesspa.model.DadosPessoais;
import br.edu.unifesspa.model.Usuario;
import br.edu.unifesspa.persistence.JPAUtil;
import br.edu.unifesspa.persistence.UsuarioRepository;

@WebServlet("/signup-servlet")
public class SignupServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManager manager = JPAUtil.getEntityManager();

		Usuario usuario = new Usuario();
		usuario.setUser(req.getParameter("usuario"));
		usuario.setSenha(req.getParameter("senha"));

		DadosPessoais dados = new DadosPessoais();
		dados.setNome(req.getParameter("nome"));
		dados.setMatricula(req.getParameter("matricula"));
		dados.setEmail(req.getParameter("email"));
		dados.setTelefone(req.getParameter("telefone"));
		dados.setRg(req.getParameter("rg"));
		dados.setCpf(req.getParameter("cpf"));
		try {
			dados.setDate(new SimpleDateFormat("yyy-MM-dd").parse(req.getParameter("nascimento")));
		} catch (ParseException e) {
			e.printStackTrace();
		}

		dados.setUsuario(usuario);

		new UsuarioRepository(manager).salvar(dados);

		resp.sendRedirect("index.jsp");
	}

}
