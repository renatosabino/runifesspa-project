<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>R-UNIFESSPA ADM</title>
<!-- Import Google Icon Font-->
<link href="../resources/css/google-icons.css" rel="stylesheet">
<!-- Materialize CSS -->
<link rel="stylesheet" href="../resources/css/materialize.css">
<link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
</head>
<body class="light-blue lighten-5">

	<!--HEADER/NAVBAR-->
	<nav class="nav-extended blue">
		<div class="nav-wrapper">
			<a href="../index.jsp" class="brand-logo center">R-UNIFESSPA</a> <a
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

	<div class=" row container section">
		<section class="col s12 m12 l12">
			<div class="card z-depth-5">
				<div class="card-content">
					<h5 class="center">Painel de Administrador</h5>
				</div>
				<div class="card-tabs">
					<ul class="tabs tabs-fixed-width">
						<li class="tab"><a href="#VerificaTicket">Verifica
								Tickets</a></li>
						<li class="tab"><a href="#ExibeTicket">Exibe Tickets</a></li>
					</ul>
				</div>
				<div class="card-content">
					<div id="VerificaTicket">
						<form id="validate-form" action="admin-servlet" method="post">
							<div class="row">
								<h5>Código do ticket:</h5>
								<div class="input-field col s6">
									<input class="black-text" id="input_text" type="text"
										data-length="32" name="cod-ticket"> <label
										class="black-text" for="input_text">Insira o código de
										verificação</label>
								</div>
							</div>
							<a class="waves-effect waves-light btn blue"
								onclick="document.getElementById('validate-form').submit();">Verificar</a>
						</form>
					</div>

					<div id="ExibeTicket">
						<h5 class="center">Tickets</h5>
						<table class="table bordered">
							<thead>
								<tr>
									<th>Usuário</th>
									<th>Horário</th>
									<th>Data</th>
									<th>Tipo</th>
									<th>Código</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="ped" items="${sessionScope.pedidos}">
									<tr>
										<td>${ped.usuario.dadosPessoais.nome}</td>
										<td>${ped.horarioPedido}</td>
										<td>${ped.dataPedido}</td>
										<td><c:if test = "${ped.tipoPedido == 1}">Café da manhã</c:if>
										<c:if test = "${ped.tipoPedido == 2}">Almoço</c:if>
										<c:if test = "${ped.tipoPedido == 3}">Jantar</c:if></td>
										<td>${ped.validatorPedido}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
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
	<script src="../resources/js/jquery-3.2.1.js"></script>
	<!-- Materialize JS -->
	<script src="../resources/js/materialize.js"></script>
	<!-- JQuery Mask -->
	<script src="../resources/js/jquery.mask.min.js"></script>

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

		//Mask
		$(document).ready(
				function() {
					$('input[name=cod-ticket]').mask(
							'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
				});
	</script>
</body>
</html>