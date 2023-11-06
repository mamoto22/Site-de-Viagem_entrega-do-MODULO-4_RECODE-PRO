<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"  href="./Style/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  
<title>Update</title>
</head>
<body class="container-fluid align-content-center text-center row position-relative flex-wrap" Style="background-image: url(./img/imghome.png);">
    <!-- Cabeçalho -->
    <header>
        <!-- Navbar Inicio -->

  <nav class="navbar  d-flex justify-content-center">

    <nav class="d-flex flex-row mb-3 navbar navbar-expand-lg ">
      <div class="container-fluid">
        <a class="navbar-brand text-black" href="/SiteDeViagen_crud/index.html">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="/SiteDeViagen_crud/index.html">Inicio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/SiteDeViagen_crud/destino.html">Destinos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/SiteDeViagen_crud/pacote.html">Pacotes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="/SiteDeViagen_crud/ReadController">Clientes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="/SiteDeViagen_crud/Cadastro.jsp">Cadastrar</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </nav>


  <!-- Navbar Fim -->
    </header>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1 class="mt-5" >Atualizar de Cliente</h1>
				<form class="mt-5" action="UpdateController" method="post">
				<div class="form-group">
						<label for="nome">ID:</label> <input type="text"
							class="form-control" id="id" name="id" value="${client.id}" readonly>
					</div>
					<div class="form-group">
						<label for="nome">Nome:</label> <input type="text"
							class="form-control" id="nome" name="nome" value="${client.nome}" required>
					</div>
					<div class="form-group">
						<label for="login">Login:</label> <input type="text"
							class="form-control" id="login" name="login" value="${client.login}" required>
					</div>
					<div class="form-group">
						<label for="senha">Senha:</label> <input type="password"
							class="form-control" id="senha" name="senha" value="${client.senha}" required>
					</div>
					<div class="form-group">
						<label for="cpf">Cpf:</label> <input
							type="text" value="${client.cpf}" class="form-control" id="cpf"
							name="cpf" required>
					</div>
					<button type="submit" class="btn btn-primary">Atualizar</button>
				</form>
			</div>
		</div>
	</div>
	 <!-- Rodapé -->
    <footer class="rodape text-center py-3 fixed-bottom">
    <p class="card-text py-3">2023 <i class="bi bi-c-circle"></i> | Projeto fictício
      para Recode Pro 2023.</p>
    <DIV>
      <img src="img/icons8-whatsapp-48 (1).png" alt="whatsApp">
      <img src="img/Facebook.png" alt="Facebook">
      <img src="img/Twitter Circled.png" alt="Twitter">
      <img src="img/TikTok.png" alt="TIKTOK">
    </DIV>
  </footer>


	<!-- Inclua os scripts do Bootstrap via CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>