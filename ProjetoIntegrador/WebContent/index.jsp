<%@page import="controle.DaoPessoa"%>
<%@page import="modelo.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    
    <jsp:include page="_topo.jsp"></jsp:include>

    <jsp:include page="_lateral.jsp"></jsp:include>
    
    <div id="miolo">
        <table class="table table-hover">
		    <thead>
		        <tr>
			        <th scope="col">#</th>
			        <th scope="col">Nome</th>
			        <th scope="col">Email</th>
			        <th scope="col">Cidade</th>
		        </tr>
		    </thead>
		    <tbody>
		        
		        <%
		        for(Pessoa p : new DaoPessoa().listarPessoa() ){%>
			        <tr>
				        <th scope="row"><%=p.getCodigo()%></th>
				        <td><%=p.getNome()%></td>
				        <td><%=p.getEmail()%></td>
				        <td><%=p.getCidade()%></td>
			        </tr>
		        <%}%>
		    </tbody>
		</table>
    </div>

	<jsp:include page="_rodape.jsp"></jsp:include>
	    
</body>
</html>