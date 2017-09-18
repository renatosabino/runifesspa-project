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
						<h4 class="black-text center">Cadastro</h4>
					</div>
					<div class="row">
						<form id="form-signup" action="signup-servlet" method="post"
							class="col s12">
							<div class="row">
								<div class="input-field">
									<i class="material-icons prefix black-text">account_circle</i>
									<input class="black-text" name="usuario" type="text"> <label
										class="grey-text" for="usuario">Usuário</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field">
									<i class="material-icons prefix black-text">lock</i> <input
										name="senha" type="password"> <label class="grey-text"
										for="senha">Senha</label>
								</div>
							</div>
							<div class="row">
								<div class="col s6">
									<div class="input-field">
										<i class="material-icons prefix black-text">person</i> <input
											class="black-text" name="nome" type="text"> <label
											class="grey-text" for="nome">Nome</label>
									</div>
								</div>
								<div class="col s6">
									<div class="input-field">
										<i class="material-icons prefix black-text">perm_identity</i>
										<input class="black-text" name="matricula" type="text">
										<label class="grey-text" for="matricula">Matricula</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col s6">
									<div class="input-field">
										<i class="material-icons prefix black-text">email</i> <input
											class="black-text" name="email" type="email"> <label
											class="grey-text" for="email">E-mail</label>
									</div>
								</div>
								<div class="col s6">
									<div class="input-field">
										<i class="material-icons prefix black-text">phone</i> <input
											class="black-text" name="telefone" type="text"> <label
											class="grey-text" for="telefone">Telefone</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col s6">
									<div class="input-field">
										<i class="material-icons prefix black-text">subtitles</i> <input
											class="black-text" name="rg" type="text"> <label
											class="grey-text" for="rg">RG</label>
									</div>
								</div>
								<div class="col s6">
									<div class="input-field">
										<i class="material-icons prefix black-text">subtitles</i> <input
											class="black-text" name="cpf" type="text"> <label
											class="grey-text" for="cpf">CPF</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col s6">
									<div class="input-field">
										<i class="material-icons prefix black-text">date_range</i> <input
											class="black-text" name="nascimento" type="date"> <label
											class="grey-text" for="nascimento"></label>
									</div>
								</div>
							</div>
							<div class="center">
								<a class="waves-effect waves-light z-depth-5 btn blue"
									onclick="document.getElementById('form-signup').submit();">Cadastrar</a>
							</div>
						</form>
					</div>
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
	<!-- JQuery Mask -->
	<script src="resources/js/jquery.mask.min.js"></script>

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

		$(document).ready(function() {
			$('input[name=cpf]').mask('000.000.000-00', {reverse:true});
			$('input[name=matricula]').mask('000000000000', {reverse:true});
			$('input[name=rg]').mask('000000000000000')
			$('input[name=telefone]').mask('(00) 90000-0000');
		});
	</script>
</body>
</html>