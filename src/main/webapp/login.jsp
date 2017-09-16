<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>R-UNIFESSPA LOGIN</title>
<!-- Import Google Icon Font-->
<link href="resources/css/google-icons.css" rel="stylesheet">
<!-- Materialize CSS -->
<link rel="stylesheet" href="resources/css/materialize.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body class="light-blue lighten-5">

	<!--HEADER/NAVBAR-->
	<nav class="nav-extended blue">
		<div class="nav-wrapper">
			<a href="index.jsp" class="brand-logo center">R-UNIFESSPA</a> <a
				href="#" data-activates="menu-mobile" class="button-collapse"><i
				class="material-icons">menu</i></a>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<li><a
					class="btn modal-trigger blue z-depth-0 waves-effect waves-light"
					href="#modalsobre"><i class="material-icons right">info_outline</i>Sobre</a></li>
				<li><a
					class="btn modal-trigger blue z-depth-0 waves-effect waves-light"
					href="#modalcontato"><i class="material-icons right">phone</i>Contato</a></li>
			</ul>
			<ul id="menu-mobile" class="side-nav">
				<li><a class="btn modal-trigger blue" href="#modalsobre"><i
						class="material-icons right">info_outline</i>Sobre</a></li>
				<li><a class="btn modal-trigger blue" href="#modalcontato"><i
						class="material-icons right">phone</i>Contato</a></li>
			</ul>
		</div>
	</nav>

	<div class="row">
		<div class="col s12 m4 offset-m4">
			<div class="card z-depth-5">
				<div class="card-content">
					<div class="card-title">
						<h4 class="black-text center">Login</h4>
					</div>
					<form id="form-login" action="login-servlet" method="post">
						<div class="input-field">
							<i class="material-icons prefix black-text">account_circle</i> <input
								class="black-text" id="icon_prefix" type="text" name="username">
							<label class="grey-text" for="icon_prefix">Usuário</label>
						</div>
						<div class="input-field">
							<i class="material-icons prefix black-text">lock</i> <input id=""
								type="password" name="pass"> <label class="grey-text"
								for="lock">Senha</label>
						</div>
						<div class="row section center">
							<form action="#" class="col s8">
								<div class="row">
									<div class="col s4">
										<form action="#">
											<p>
												<input type="checkbox" id="test5" /> <label for="test5">Lembrar
													senha?</label>
											</p>
										</form>
									</div>
									<div class="col s4">
										<label><h6>
												<a href="#">Esqueceu a senha?</a>
											</h6></label>
									</div>
								</div>
							</form>
						</div>
						<div class="center">
							<a class="waves-effect waves-light z-depth-5 btn blue"
								onclick="document.getElementById('form-login').submit();"><i
								class="material-icons right">send</i>Login</a>
							<div class="section">
								<h6 class="black-text center">Ainda não possui um login?</h6>
							</div>
							<a href="signup.jsp"
								class="waves-effect waves-light pulse z-depth-5 btn blue">Cadastrar</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal SOBRE -->
	<div id="modalsobre" class="modal modal-fixed-footer">
		<div class="modal-content">
			<h4>Sobre</h4>
			<p>A bunch of text</p>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-green btn-flat ">OK</a>
		</div>
	</div>
	<!-- Modal CONTATOS -->
	<div id="modalcontato" class="modal modal-fixed-footer">
		<div class="modal-content">
			<h4>Contatos</h4>
			<p>A bunch of text</p>
		</div>
		<div class="modal-footer">
			<a href="#!"
				class="modal-action modal-close waves-effect waves-green btn-flat ">OK</a>
		</div>
	</div>

	<!-- JQuery -->
	<script src="resources/js/jquery-3.2.1.js"></script>
	<!-- Materialize JS -->
	<script src="resources/js/materialize.js"></script>

	<script>
		//menu mobile
		$(".button-collapse").sideNav();

		//Modalsobre
		$(document).ready(function() {
			$('#modalsobre').modal();
		});

		//Modalcontato
		$(document).ready(function() {
			$('#modalcontato').modal();
		});
	</script>
</body>
</html>