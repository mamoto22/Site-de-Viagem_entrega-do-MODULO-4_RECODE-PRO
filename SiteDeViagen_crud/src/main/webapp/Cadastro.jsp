<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cadastro</title>

  <link rel="stylesheet"  href="./Style/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  
</head>

<body class="container-fluid align-content-center text-center row position-relative flex-wrap" Style="background-image: url(./img/imghome.png);">

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
 <!--InicioFormulario-->
 <main class="text-center py-3 justify-content-center d-flex ">
 <form action="CreateController" method="POST"  class="row g-3 w-50 h-50 justify-content-center d-flex  ">
    <div class="col-md-4">
      <label for="name" class="form-label" Style="color: #F72585">Nome</label>
      <input type="text" class="form-control is-valid " id="nome"  name="nome"  required>
      <div class="valid-feedback">
        Parece bom!
      </div>
    </div>
    <div class="col-md-4">
      <label for="cpf" class="form-label" Style="color: #F72585">CPF</label>
      <input type="text" class="form-control is-valid" id="cpf" name="cpf"  required>
      <div class="valid-feedback">
        Parece bom!
      </div>
    </div>
    <div class="col-md-4">
      <label for="login" class="form-label" Style="color: #F72585">Apelido ou Login</label>
      <div class="input-group has-validation">
        <input type="text" class="form-control is-invalid" id="login" name="login" aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback" required>
        <div id="validationServerUsernameFeedback" class="invalid-feedback">
          Por favor insira um Apelido.
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <label for="senha" class="form-label" Style="color: #F72585">Digite uma Senha</label>
      <input type="password" class="form-control is-invalid" id="senha" name="senha" aria-describedby="validationServer03Feedback" required>
      <div id="validationServer03Feedback" class="invalid-feedback">
        
      </div>
    </div>
    
    <div class="col-12">
      <div class="form-check">
        <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" aria-describedby="invalidCheck3Feedback" required>
        <label class="form-check-label" for="invalidCheck3" Style="color: #F72585">
          Aceito
        </label>
        <div id="invalidCheck3Feedback" class="invalid-feedback" Style="color: #F72585">
          Você deve concordar antes de enviar.
        </div>
      </div>
    </div>
    <div class="col-12">
      <button class="btn btn-primary" type="submit" value="Registrar">Cadastrar</button>
    </div>
  </form>
</main>
  <!--InicioFormulario-->

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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
    crossorigin="anonymous"></script>
</body>

</html>