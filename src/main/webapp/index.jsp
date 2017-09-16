<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>R-UNIFESSPA</title>
<!-- Import Google Icon Font-->
<link href="resources/css/google-icons.css" rel="stylesheet">
<!-- Materialize CSS -->
<link rel="stylesheet" href="resources/css/materialize.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body class="light-blue lighten-5">
	<nav class="nav-extended blue">
		<div class="nav-wrapper">
			<a href="#" class="brand-logo center"><h3>R-UNIFESSPA</h3></a> <a
				href="#" data-activates="menu-mobile" class="button-collapse"><i
				class="material-icons">menu</i></a>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<li><a class="btn blue z-depth-0 waves-effect waves-light"
					href="login.jsp"><i class="material-icons right">account_circle</i>Login</a></li>
				<li><a
					class="btn modal-trigger blue z-depth-0 waves-effect waves-light"
					href="#modalsobre"><i class="material-icons right">info_outline</i>Sobre</a></li>
				<li><a
					class="btn modal-trigger blue z-depth-0 waves-effect waves-light"
					href="#modalcontato"><i class="material-icons right">phone</i>Contato</a></li>
			</ul>
			<ul id="menu-mobile" class="side-nav">
				<li><a href="login.jsp"><i class="material-icons right">account_circle</i>Login</a></li>
				<li><a class="btn modal-trigger blue" href="#modalsobre"><i
						class="material-icons right">info_outline</i>Sobre</a></li>
				<li><a class="btn modal-trigger blue" href="#modalcontato"><i
						class="material-icons right">phone</i>Contato</a></li>
			</ul>
		</div>
		<div class="nav-content">
			<ul class="tabs tabs-transparent">
				<li class="tab"><a href="#PaginaPrincipal">Principal</a></li>
				<li class="tab"><a href="#Cardapio">Cardápio</a></li>
				<li class="tab"><a href="Ticket.html" target="_blank">Ticket</a></li>
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

	<!--GRID Principal-->

	<div id="PaginaPrincipal" class="col s12">
		<div class="row-no-space-row">

			<!--grid top slider-->

			<div class="col s12">
				<div class="slider blue">
					<ul class="slides">
						<li><img src="resources/img/ContratoRU.jpg">
							<div class="caption center-align">
								<h3>This is our big Tagline!</h3>
								<h5 class="light grey-text text-lighten-3">Here's our small
									slogan.</h5>
							</div></li>
						<li><img src="resources/img/FotoRUExteno.jpg">
							<div class="caption left-align">
								<h3>Left Aligned Caption</h3>
								<h5 class="light grey-text text-lighten-3">Here's our small
									slogan.</h5>
							</div></li>
						<li><img src="resources/img/ru.jpg">
							<div class="caption right-align">
								<h3>Right Aligned Caption</h3>
								<h5 class="light grey-text text-lighten-3">Here's our small
									slogan.</h5>
							</div></li>
					</ul>
				</div>
			</div>

			<!--Containers e grid para os cards de notícias-->

			<div class="container">
				<hr>
				<h5>Dicas e Notícias Mais Recentes</h5>
				<div class="row section no-space-row">
					<div class="col l4 m12 s12">
						<div class="card medium z-depth-5">
							<div class="card-image waves-effect waves-light card-image-cover">
								<img src="resources/img/suco_nutritivo.jpg"> <span
									class="card-title">7 sucos nutritivos para o verão</span>
							</div>
							<a href="#" class="add-btn-flt btn btn-floating blue z-depth-3">
								<i class="material-icons">add</i>
							</a>
							<div class="card-content">
								<p class="truncate">Sucos industrializados não substituem o
									suco feito com a própria fruta.</p>
							</div>
						</div>
					</div>
					<div class="col l4 m12 s12">
						<div class="card medium z-depth-5">
							<div class="card-image waves-effect waves-light card-image-cover">
								<img src="resources/img/10benMaca.jpg"> <span
									class="card-title">10 dicas de alimentação para o verão</span>
							</div>
							<a href="#" class="add-btn-flt btn btn-floating blue z-depth-3">
								<i class="material-icons">add</i>
							</a>
							<div class="card-content">
								<p class="truncate">Conheça 10 benefícios da maçã.</p>
							</div>
						</div>
					</div>
					<div class="col l4 m12 s12">
						<div class="card medium z-depth-5">
							<div class="card-image waves-effect waves-light card-image-cover">
								<img src="resources/img/10dicasAlimento.jpg"> <span
									class="card-title">10 alimentos que dão mais energia e
									disposição ao corpo</span>
							</div>
							<a href="#" class="add-btn-flt btn btn-floating blue z-depth-3">
								<i class="material-icons">add</i>
							</a>
							<div class="card-content">
								<p class="truncate">Os cuidados com a alimentação são
									essenciais para o bom funcionamento do corpo.</p>
							</div>
						</div>
					</div>
				</div>
				<a href="#" class="btn blue pulse z-depth-5">Mais Conteúdo</a>
				<hr>
			</div>
		</div>
	</div>

	<!--Cardápios-->
	<div id="Cardapio" class="col s12">
		<div class="container section">
			<div class="row">
				<div class="col s12">
					<ul class="tabs">
						<li class="tab col s2"><a class="active" href="#Segunda">Segunda</a></li>
						<li class="tab col s2"><a href="#Terca">Terça</a></li>
						<li class="tab col s2"><a href="#Quarta">Quarta</a></li>
						<li class="tab col s2"><a href="#Quinta">Quinta</a></li>
						<li class="tab col s2"><a href="#Sexta">Sexta</a></li>
						<li class="tab col s2"><a href="#Sabado">Sábado</a></li>
					</ul>
				</div>
			</div>
			<!--Conteúdo dos cardápios-->
			<!--Segunda Feira-->
			<div id="Segunda" class="col s12">
				<ul class="collapsible popout" data-collapsible="accordion">
					<li>
						<div class="collapsible-header">
							<i class="material-icons">filter_drama</i>Café da Manhã
						</div>
						<div class="collapsible-body">
							<table class="responsive-table bordered highlight centered">
								<thead>
									<tr>
										<th>Pratos Principais</th>
										<th>Acompanhamentos</th>
										<th>Vegetarianos</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">place</i>Almoço
						</div>
						<div class="collapsible-body">
							<table class="responsive-table bordered highlight centered">
								<thead>
									<tr>
										<th>Pratos principais</th>
										<th>Acompanhamentos</th>
										<th>Vegetarianos</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">whatshot</i>Jantar
						</div>
						<div class="collapsible-body">
							<table class="responsive-table bordered highlight centered">
								<thead>
									<tr>
										<th>Pratos Principais</th>
										<th>Acompanhamentos</th>
										<th>Vegetarianos</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
				</ul>
			</div>
			<!--Terça Feira-->
			<div id="Terca" class="col s12">
				<ul class="collapsible popout" data-collapsible="accordion">
					<li>
						<div class="collapsible-header">
							<i class="material-icons">filter_drama</i>Café da Manhã
						</div>
						<div class="collapsible-body">
							<table class="responsive-table bordered highlight centered">
								<thead>
									<tr>
										<th>Pratos Principais</th>
										<th>Acompanhamentos</th>
										<th>Vegetariano</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">place</i>Almoço
						</div>
						<div class="collapsible-body">
							<table class="responsive-table bordered highlight centered">
								<thead>
									<tr>
										<th>Pratos Principais</th>
										<th>Acompanhamentos</th>
										<th>Vegetariano</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
					<li>

						<div class="collapsible-header">
							<i class="material-icons">whatshot</i>Jantar
						</div>
						<div class="collapsible-body">
							<table class="responsive-table bordered highlight centered">
								<thead>
									<tr>
										<th>Pratos Principais</th>
										<th>Acompanhamentos</th>
										<th>Vegetarianos</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
									<tr>
										<td>-</td>
										<td>-</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
						</div>
					</li>
				</ul>
			</div>
			<!--Quarta Feira-->
			<div id="Quarta" class="col s12">
				<ul class="collapsible popout" data-collapsible="accordion">
					<li>
						<div class="collapsible-header">
							<i class="material-icons">filter_drama</i>Café da Manhã
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">place</i>Almoço
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">whatshot</i>Jantar
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
				</ul>
			</div>
			<!--Quinta Feira-->
			<div id="Quinta" class="col s12">
				<ul class="collapsible popout" data-collapsible="accordion">
					<li>
						<div class="collapsible-header">
							<i class="material-icons">filter_drama</i>Café da Manhã
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">place</i>Almoço
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">whatshot</i>Jantar
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
				</ul>
			</div>
			<!--Sexta Feira-->
			<div id="Sexta" class="col s12">
				<ul class="collapsible popout" data-collapsible="accordion">
					<li>
						<div class="collapsible-header">
							<i class="material-icons">filter_drama</i>Café da Manhã
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">place</i>Almoço
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">whatshot</i>Jantar
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
				</ul>
			</div>
			<!--Sábado-->
			<div id="Sabado" class="col s12">
				<ul class="collapsible popout" data-collapsible="accordion">
					<li>
						<div class="collapsible-header">
							<i class="material-icons">filter_drama</i>Café da Manhã
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">place</i>Almoço
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
					<li>
						<div class="collapsible-header">
							<i class="material-icons">whatshot</i>Jantar
						</div>
						<div class="collapsible-body">
							<span>Lorem ipsum dolor sit amet.</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div id="Ticket" class="col s12"></div>

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
				<h6 class="center">UNIVERSIDADE FEDERAL DO SUL E SUDESTE DO
					PARÁ</h6>
			</div>
		</div>
	</footer>

	<!-- JQuery -->
	<script src="resources/js/jquery-3.2.1.js"></script>
	<!-- Materialize JS -->
	<script src="resources/js/materialize.js"></script>

	<script>
		//menu mobile
		$(".button-collapse").sideNav();
	</script>

	<script>
		//slider principal
		$(document).ready(function() {
			$('.slider').slider();
		});

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
</body>
</html>