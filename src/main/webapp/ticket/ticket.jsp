<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Imprima seu ticket</title>
<link rel="stylesheet" type="text/css" href="../resources/css/ticket.css">
</head>
<body>
<div class="panel-ticket">
		<h1 class="title-ticket">Ticket R-Unifesspa</h1>
		<p class="text-ticket">Apresente este ticket ao estabelecimento para trocar pela sua refei��o!</p>
		<h3 class="subtitle-ticket">C�digo de valida��o:</h3>
		<p class="cod-ticket">${cod}</p>
	</div>
	<br/>
	<a href="ticketpage.jsp">Voltar</a>
</body>
</html>