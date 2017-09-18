<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>R-UNIFESSPA ADM</title>
	<!-- Import Google Icon Font-->
	<link href="../resources/css/google-icons.css" rel="stylesheet">
	<!-- Materialize CSS -->
	<link rel="stylesheet" href="../resources/css/materialize.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/style.css">
	<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/66EF7419-0E41-C740-A02F-EFAE623ED15A/main.js" charset="UTF-8"></script></head>
</head>
<body class="light-blue lighten-5">

<!--HEADER/NAVBAR-->
	<nav class="nav-extended blue">
    	<div class="nav-wrapper">
      		<a href="index.html" class="brand-logo center">R-UNIFESSPA</a>
      		<a href="#" data-activates="menu-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
      			<ul id="nav-mobile" class="right hide-on-med-and-down">
        			<li><a class="btn modal-trigger blue z-depth-0 waves-effect waves-light" href="#modalsobre"><i class="material-icons right">info_outline</i>Sobre</a></li>
        			<li><a class="btn modal-trigger blue z-depth-0 waves-effect waves-light" href="#modalcontato"><i class="material-icons right">phone</i>Contato</a></li>
      			</ul>
      			<ul id="menu-mobile" class="side-nav">
        			<li><a class="btn modal-trigger blue" href="#modalsobre"><i class="material-icons right">info_outline</i>Sobre</a></li>
        			<li><a class="btn modal-trigger blue" href="#modalcontato"><i class="material-icons right">phone</i>Contato</a></li>
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
              <li class="tab"><a href="#VerificaTicket">Verifica Tickets</a></li>
              <li class="tab"><a href="#ExibeTicket">Exibe Tickets</a></li>
            </ul>
          </div>
          <div class="card-content">
        <div id="VerificaTicket">
          <form>
            <div class="row">
            <h5>C�digo do ticket:</h5>
              <div class="input-field col s6">
                <input class="black-text" id="input_text" type="text" data-length="10">
                <label class="black-text" for="input_text">Insira o c�digo de verifica��o</label>
              </div>
            </div>
            <a class="waves-effect waves-light btn blue" href="#">Verificar</a>
          </form>
        </div>

        <div id="ExibeTicket">
        <h5 class="center">Tickets do dia</h5>
          <table class="table bordered">
              <thead>
                <tr>
                  <th>Caf� da Manh�</th>
                  <th>Almo�o</th>
                  <th>Jantar</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>-</td>
                  <td>-</td>
                  <td>-</td>
                </tr>
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
          <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">OK</a>
      </div>
  </div>
<!-- Modal CONTATOS -->
    <div id="modalcontato" class="modal modal-fixed-footer">
      <div class="modal-content">
          <h4>Contatos</h4>
          <p>A bunch of text</p>
      </div>
      <div class="modal-footer">
          <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">OK</a>
      </div>
  </div>  	

<!-- JQuery -->
<script src="../resources/js/jquery-3.2.1.js"></script>
<!-- Materialize JS -->
<script src="../resources/js/materialize.js"></script>

<script> 
//menu mobile
  	$(".button-collapse").sideNav();
</script>

<script>
//Modalsobre
   $(document).ready(function(){
    $('#modalsobre').modal();
  });
</script>

<script>
//Modalcontato
   $(document).ready(function(){
    $('#modalcontato').modal();
  });
</script>
</body>
</html>