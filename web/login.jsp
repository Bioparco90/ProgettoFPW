<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="header.jsp" />
<body>
  <header>
    <img src="img/favicon.png" alt="logo-fakeflix" />
    <a href="index"
      ><img
        id="logo"
        title="Logo"
        alt="Logo del sito"
        src="img/fakeFlix_logo.png"
        width="350"
        height="150"
    /></a>
  </header>

  <nav class="col-12">
    <ul>
      <li class="col-2"><a href="index">Home</a></li>
      <li class="col-2"><a href="about">About</a></li>
      <li class="col-2"><a href="catalogo">Catalogo</a></li>
      <li class="col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li>
      <li class="col-2">
        <a href="login">
          <input type="button" value="Login" class="loginButton" />
        </a>
      </li>
    </ul>
  </nav>

  <main class="main col-12">
    <div class="login col-6">
      <form id="loginForm" action="login" method="post">
        <div class="loginTitle">Inserisci le tue credenziali</div>
        <div class="input username">
          <input
            type="text"
            name="user"
            id="user"
            class="textbox"
            required
            placeholder="Username"
            maxlength="20"
          />
          <div id="userCounter" class="counter"></div>
          <div id="usernameError" class="error"></div>
        </div>

        <div class="input password">
          <input
            type="password"
            name="psw"
            id="psw"
            class="textbox"
            required
            placeholder="Password"
            maxlength="20"
          />
          <div id="pswCounter" class="counter"></div>
          <div id="passwordError" class="error"></div>
        </div>
        <div>
          <input type="submit" class="submit" value="Accedi" />
        </div>
        <p>Non hai ancora un account? Registrati qui affianco</p>
      </form>
    </div>

    <div class="registrazione col-6">
      <form
        id="registrationForm"
        action="registrazione"
        method="post"
        enctype="multipart/form-data"
      >
        <div class="regTitle">Registrati</div>
        <div class="container">
          <div class="col-6 sinistra">
            <div class="input usernamereg">
              <input
                type="text"
                name="username"
                id="username"
                class="textbox"
                required
                placeholder="Username"
                maxlength="20"
              />
              <div id="usernameCounter" class="counter"></div>
              <div id="usernameRegError" class="error"></div>
            </div>

            <div class="input nome">
              <input
                type="text"
                name="nome"
                id="nome"
                class="textbox"
                required
                placeholder="Nome"
                maxlength="50"
              />
              <div id="nomeCounter" class="counter"></div>
              <div id="nomeError" class="error"></div>
            </div>

            <div class="input cognome">
              <input
                type="text"
                name="cognome"
                id="cognome"
                class="textbox"
                required
                placeholder="Cognome"
                maxlength="50"
              />
              <div id="cognomeCounter" class="counter"></div>
              <div id="cognomeError" class="error"></div>
            </div>

            <div class="input email">
              <input
                type="email"
                name="email"
                id="email"
                class="textbox"
                required
                placeholder="Email"
                maxlength="50"
              />
              <div id="emailCounter" class="counter"></div>
              <div id="emailError" class="error"></div>
            </div>
          </div>

          <div class="col-6 destra">
            <div class="input citta">
              <input
                type="text"
                name="citta"
                id="citta"
                class="textbox"
                required
                placeholder="Citta"
                maxlength="50"
              />
              <div id="cittaCounter" class="counter"></div>
              <div id="cittaError" class="error"></div>
            </div>

            <div class="input regpassword">
              <input
                type="password"
                name="password"
                id="password"
                class="textbox"
                required
                placeholder="Password"
                maxlength="20"
              />
              <div id="passwordCounter" class="counter"></div>
              <div id="passwordRegError" class="error"></div>
            </div>

            <div class="input confirmpsw">
              <input
                type="password"
                name="confirmpsw"
                id="confirmpsw"
                class="textbox"
                required
                placeholder="Conferma password"
                maxlength="20"
              />
              <div id="confirmpswCounter" class="counter"></div>
              <div id="confirmpswError" class="error"></div>
            </div>

            <div class="input thumbnail">
              <!-- <label for="file" class="file">Scegli immagine</label> -->
              <input
                type="file"
                id="file"
                name="file"
                accept="image/*"
                placeholder="Scegli immagine profilo"
              />

              <button type="button" id="fileBtn" class="textbox">
                Scegli immagine profilo
              </button>
            </div>
            <div id="fileError" class="error"></div>
          </div>
        </div>
        <div>
          <input type="submit" class="submit" value="Registrati" />
        </div>
      </form>
    </div>
  </main>

  <jsp:include page="footer.jsp" />
</body>
