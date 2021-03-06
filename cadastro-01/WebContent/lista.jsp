<%@page import="br.com.fiap.bean.Cliente"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="./css/bootstrap.css">
<title>Lista Cliente</title>
</head>
<body>

	<header>
		<nav></nav>
	</header>
	<div></div>
	<section>
	
	
		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">NOME</th>
					<th scope="col">DT NASC</th>
					<th scope="col">GENÊRO</th>
					<th scope="col">TEL</th>
				</tr>
			</thead>
<%
 	//SCRIPTLETS
			
 		//Recpção do atributo do request enviado pela Servlet
 		List<Cliente> lista = (List<Cliente>)request.getAttribute("listaCli");
 		int count = 1;
 		
 			for(Cliente cli : lista){
	 			out.println("<tbody>");
	 			out.println("<tr>");
	 			out.println("<td>"+ count +"</td>");  
	 			out.println("<td>"+ cli.getNome() + " " + cli.getSobrenome() + "</td>");
	 			out.println("<td>"+ cli.getDataNasc() +"</td>");
	 			  if(cli.getGenero() == 'm'){
	                    out.println("<td>Masculino</td>");
	                }else if(cli.getGenero() == 'f'){
	                    out.println("<td>Feminino</td>");
	                }else if(cli.getGenero() == 'o'){
	                    out.println("<td>Outros</td>");
	                }
	            out.println("<td>"+ cli.getTelefone() +"</td>");
				out.println("<td><a href=listar?id-cli="+ count +"> <svg width='1em' height='1em' viewBox='0 0 16 16' class='bi bi-pencil-square' fill='currentColor' xmlns='http://www.w3.org/2000/svg'><path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/><path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/></svg> </a></td>");
	 			out.println("</tr>");
	 			out.println("</tbody>");	
	 			count++;
 			}	 
 			
 	
%>			
			
		</table>
		
		
	</section>
	<footer></footer>

<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/bootstrap.js"></script>
</body>
</html>