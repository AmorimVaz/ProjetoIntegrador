<%@page import="controle.DaoPessoa"%>
<%@page import="modelo.Pessoa"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	// 1. Coletar dados
	String nome = request.getParameter("nome");
	String cpf = request.getParameter("cpf");
	String email = request.getParameter("email");
	String endereco = request.getParameter("endereco");
	String cidade = request.getParameter("cidade");
	String uf = request.getParameter("uf");
	String cep = request.getParameter("cep");
	
	// 2. Construir objeto
	Pessoa p = new Pessoa();
	p.setNome(nome);
	p.setCpf(cpf);
	p.setEmail(email);
	p.setEndereco(endereco);
	p.setCidade(cidade);
	p.setUf(uf);
	p.setCep(cep);
	
	// 3. Manipular (inserir)
	new DaoPessoa().inserirPessoa( p );
	
	// 4. (Opcional) Redirecionar
	response.sendRedirect("index.jsp");
	
%>

</body>
</html>