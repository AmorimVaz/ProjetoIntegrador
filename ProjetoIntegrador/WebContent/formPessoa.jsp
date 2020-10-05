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
        <form action="actionPessoa.jsp" method="get">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>Nome</label>
                    <input name="nome"  type="text" class="form-control" placeholder="Nome Completo">
                </div>
                <div class="form-group col-md-6">
                    <label>CPF</label>
                    <input name="cpf" maxlength="11" type="number" class="form-control" placeholder="Apenas números">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-12">
                    <label>Email</label>
                    <input name="email" type="email" class="form-control" placeholder="username@domain">
                </div>
                </div>
            <div class="form-row">
                <div class="form-group col-12">
                    <label>Endereço</label>
                    <input name="endereco" type="text" class="form-control" placeholder="Rua e bairro">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                <label>Cidade</label>
                <input name="cidade" type="text" class="form-control">
                </div>
                <div class="form-group col-md-4">
                <label >Estado</label>
                <select name="uf" class="form-control">
                    <option selected>Selecionar...</option>
                    <option value="AL">Alagoas</option>
                    <option value="BA">Bahia</option>
                    <option value="PE">Pernambuco</option>
                </select>
                </div>
                <div class="form-group col-md-2">
                <label>CEP</label>
                <input name="cep" type="text" maxlength="8" placeholder="Apenas números" class="form-control">
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Cadastrar</button>
        </form>
    </div>

	<jsp:include page="_rodape.jsp"></jsp:include>
		
</body>
</html>