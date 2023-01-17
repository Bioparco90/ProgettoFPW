<%@ page contentType="text/html; charset=UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty user}">
  <c:redirect url="login" />
</c:if>

<jsp:include page="header.jsp" />
<body>
  <header>
    <img src="img/favicon.png" alt="logo-fakeflix" />
    <a href="index"
      ><img
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
      <li class="active col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li>

      <li class="col-2">
        <a href="areaPersonale">
          <input type="button" value="Profilo" class="loginButton" />
        </a>
      </li>

      <li class="col-2">
        <a href="logout">
          <input type="button" value="Logout" class="loginButton" />
        </a>
      </li>
    </ul>
  </nav>

  <div class="contenuto col-12">
      <main class="col-8 nuovoProdottoBox">
          <form action="nuovoProdotto" method="post" enctype="multipart/form-data" id="nuovoProdottoForm">
              <div class="nuovoProdottoTitle">Compila i campi</div>
              <div class="container">
                  <div class="col-6">
                      <div class="input titolo">
                          <input
                              type="text"
                              name="titolo"
                              id="titolo"
                              class="textbox"
                              required
                              placeholder="Titolo"
                              maxlength="50"
                              />
                          <div id="titoloCounter" class="counter"></div>
                          <div id="titoloError" class="error"></div>
                      </div>

                      <div class="input descrizione">
                          <input
                              type="text"
                              name="trama"
                              id="trama"
                              class="textbox"
                              required
                              placeholder="Descrizione"
                              maxlength="200"
                              />
                          <div id="tramaCounter" class="counter"></div>
                          <div id="tramaError" class="error"></div>
                      </div>

                      <div class="input genere">
                          <input
                              type="text"
                              name="genere"
                              id="genere"
                              class="textbox"
                              required
                              placeholder="Genere"
                              maxlength="20"
                              />
                          <div id="genereCounter" class="counter"></div>
                          <div id="genereError" class="error"></div>
                      </div>
                  </div>

                  <div class="col-6">
                      <div class="input durata">
                          <input
                              type="text"
                              name="durata"
                              id="durata"
                              class="textbox"
                              required
                              placeholder="Durata"
                              />
                          <div id="durataCounter" class="counter"></div>
                          <div id="durataError" class="error"></div>
                      </div>

                      <div class="input regista">
                          <input
                              type="text"
                              name="regista"
                              id="regista"
                              class="textbox"
                              required
                              placeholder="Regista"
                              maxlength="50"
                              />
                          <div id="registaCounter" class="counter"></div>
                          <div id="registaError" class="error"></div>
                      </div>

                      <div class="input prezzo">                          
                          <input type="number" name="prezzo" id="prezzo" class="textbox" step="0.01" placeholder="Prezzo" required>
                          <div id="prezzoCounter" class="counter"></div>
                          <div id="prezzoError" class="error"></div>
                      </div>
                  </div>
              </div>

              <div class="input thumbnail col-12">
                  <label for="locandina" class="file">Scegli immagine</label>
                  <input type="file" id="locandina" name="locandina"/>
              </div>
              <div id="fileError" class="error"></div>

              <div class="col-12">
                  <input type="submit" class="submit" value="Aggiungi" />
              </div>
          </form> 
      </main>

      <aside class="col-4 aside">
          <!-- ---------- Dark mode switcher ---------- -->
          <div class="js">
              <button id="toggle"> dark & Light </button>
          </div>

          <!-- ---------- Font size switcher ---------- -->
          <div class="js">
              <button id="normal-size"> A </button>
              <button id="bigger-size"> A+ </button>
              <button id="biggest-size"> A++ </button>
          </div>
          <article class="evidenza col-12">
              <div class="contenutocard">
                  <img src="img/products/pulp-fiction1.jpg" alt="locandina" id="locandina">
              </div>

              <div class="contenutocard">
                  <h2 id="movieTitle">Pulp Fiction</h2>
                  <p>Una misteriosa valigetta al centro delle vicende di un cast stellare</p>
                  <input type="button"value="Acquista" class="myButton">
              </div>

          </article>

          <article class="sponsors">

              <a href="https://www.adidas.it/"><img src="img/Logo_Adidas.png" alt="sponsor Adidas" class="col-6"></a>

              <a href="https://unica.it/unica/"><img src="img/Logo_uni_1.png" alt="sponsor Unica" class="col-6"> </a>    
          </article>

      </aside>
    </div>
  
  <jsp:include page="footer.jsp" />
</body>
