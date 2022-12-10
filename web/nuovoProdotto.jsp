<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty user}">
    <c:redirect url="login"/>
</c:if>

<jsp:include page="header.jsp"/>
  <body>
        <header>
          <img src="img/favicon.png" alt="logo-fakeflix">
          <a href="index"><img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="350" height="150"></a>
        </header>
       
        <nav class="col-12">
            <ul>
                <li class="col-2"><a href="index">Home</a></li>
                <li class="col-2"><a href="about">About</a></li>
                <li class="col-2"><a href="catalogo">Catalogo</a></li>  
                <li class="active col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
                <li class="col-2">
                    <a href="login">
                        <input type="button" value="Login" class="loginButton">
                    </a>
                </li>
            </ul>
        </nav>
      
      <main class="col-12 nuovoProdottoBox">         
            <form action="nuovoProdotto" method="post" enctype="multipart/form-data">
                <div class="nuovoProdottoTitle">Compila i campi</div>
                <div class="container">
                   <div class="col-6">
                      <div class="input titolo">
                        <input type="text" name="titolo" id="titolo" class="textbox" required placeholder="Titolo">
                      </div>
                
                    <div class="input descrizione">
                        <input type="text" name="trama" id="trama" class="textbox" required placeholder="Descrizione">
                    </div>
                     
                    <div class="input genere">
                        <input type="text" name="genere" id="genere" class="textbox" required placeholder="Genere"> 
                    </div>
                </div>
                
                <div class="col-6">
                    <div class="input durata">
                        <input type="text" name="durata" id="durata" class="textbox" required placeholder="Durata">
                    </div>
                
                    <div class="input regista">
                        <input type="text" name="regista" id="regista" class="textbox" required placeholder="Regista">
                    </div>
                

                <!-- <label for="trama">Descrizione</label>
                <input type="text" name="trama" id="trama" required placeholder="Trama"> -->
                
                    <div class="input prezzo">
                        <select name ="prezzo" class="textbox" id="prezzo">
                           <option value="prezzo">Prezzo</option>
                           <option value="2">2.99</option>
                           <option value="3">3.99</option>
                           <option value="4">4.99</option>
                           <option value="5">5.99</option>
                    </select> 
                    </div>
                </div> 
                </div>
                 
                                
                <div class="input thumbnail col-12">
                    <label for="locandina" class="file">Scegli immagine</label>
                    <input type="file" id="locandina" name="locandina">
                </div>
                
                <div class="col-12">
                    <input type="submit" class="submit" value="Aggiungi">
                </div>    
            </form>
      </main>
<jsp:include page="footer.jsp"/> 