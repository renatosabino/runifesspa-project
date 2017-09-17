<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>R-UNIFESSPA TICKET</title>
<!-- Import Google Icon Font-->
<link href="../resources/css/google-icons.css" rel="stylesheet">
<!-- Materialize CSS -->
<link rel="stylesheet" href="../resources/css/materialize.css">
<link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
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

	<!-- TELA TICKETS PREÇOS-->
	<div class="row container section">
		<section class="col s12 m6 l9">
		<div class="card z-depth-5">
			<div class="card-content">
				<h5 class="center">Preços</h5>
			</div>
			<div class="card-tabs blue">
				<ul class="tabs tabs-fixed-width">
					<li class="tab"><a href="#Discentes">Discentes</a></li>
					<li class="tab"><a href="#DocentesTecnicos">Docentes/Técnicos</a></li>
				</ul>
			</div>
			<div class="card-content blue lighten-3">
				<div id="Discentes">
					<table class="table bordered">
						<thead>
							<tr>
								<th>Café da Manhã</th>
								<th>Almoço</th>
								<th>Jantar</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>R$1,00</td>
								<td>R$2,00</td>
								<td>R$3,00</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="DocentesTecnicos">
					<table class="table bordered">
						<thead>
							<tr>
								<th>Café da Manhã</th>
								<th>Almoço</th>
								<th>Jantar</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>R$4,00</td>
								<td>R$5,00</td>
								<td>R$6,00</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<!--TELA TICKETS COMPRAR-->
		<div class="card z-depth-5">
			<div class="card-content">
				<h5 class="center">Comprar Ticket</h5>
				<div class="form">
					<div class="input-field"name"Quemvce">
						<select>
							<option value="" disabled selected>Quem você é?</option>
							<option value="1">Discente</option>
							<option value="2">Docente/Técnico</option>
						</select>
					</div>
					<div class="input-field" name="refeicao">
						<select>
							<option value="" disabled selected>Escolha a refeição</option>
							<option value="1">Café da Manhã</option>
							<option value="2">Almoço</option>
							<option value="2">Jantar</option>
						</select>
					</div>
				</div>
				<div class="row center">
					<button
						class="btn waves-effect waves-light blue centered z-depth-5"
						type="submit" name="action">Gerar Tickets</button>
				</div>
			</div>
		</div>
		</section>
		<!--saldo e Inserir crédito-->
		<aside class="col s12 m6 l3">
		<div class="card z-depth-5">
			<div class="card-content">
				<div class="row">
					<form class="col s12">
						<div class="row">
							<div class="col s12">
								<div class="input-field inline">
									<h4 class="center">
										Seu saldo atual:
										</h5>
										<h5 class="center" id="saldo">
											10,00
											</h3>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="card z-depth-5">
			<div class="card-content">
				<div class="row">
					<h4 class="center">
						Adicionar crédito:
						</h5>
						<form>
							<div class="input-field">
								<input class="black-text" name="telefone" type="tel"> <label
									class="grey-text" for="telefone">Valor</label>
							</div>
								<div class="center">
									<a class="btn modal-trigger blue waves-effect waves-light z-depth-5"
										href="#modalccredito">Recarregar</a>
								</div>
						</form>
				</div>
			</div>
		</div>
		</aside>

	</div>

	<!--FOOTER-->
	<footer class="page-footer blue lighten-2">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">Restaurante Universitário UNIFESSPA</h5>
			</div>
		</div>
		<div class="">
			<div class="col l6 s12">
				<h6 class="white-text">
					Envie-nos sua sugestão, opinião ou reclamação:
					</h5>
					<form>
						<div class="row-no-space-row">
							<div class="input-field col l6 s12">
								<i class="material-icons prefix white-text">mode_edit</i>
								<textarea id="sugest" class="materialize-textarea white-text"
									style="border-bottom: #f50057"></textarea>
								<label for="sugest">Escreva</label>
							</div>
							<div class="section">
								<a href="#" class="btn blue z-depth-5">Enviar</a>
							</div>
						</div>
					</form>
			</div>
		</div>
	</div>
	<div class="footer-copyright blue darken-1">
		<div class="container">
			<h6 class="center">UNIVERSIDADE FEDERAL DO SUL E SUDESTE DO PARÁ</h6>
		</div>
	</div>
	</footer>

	<!-- JQuery -->
	<script src="../resources/js/jquery-3.2.1.js"></script>
	<!-- Materialize JS -->
	<script src="../resources/js/materialize.js"></script>

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
			$('select').material_select();
		});
	</script>
</body>
</html>