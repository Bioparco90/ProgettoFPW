<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty user}">
    <c:redirect url="login"/>
</c:if>

<jsp:include page="header.jsp"/>
  <body>
        <header>
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
      
      <div class="nuovoProdottoBox col-9">
            <form action="nuovoProdotto" method="post" enctype="multipart/form-data">
                <div class="thumbnail">
                    <label for ="locandina">Aggiungi foto</label>
                    <input type="file" id="locandina" name="locandina">
                </div>
                
                <div class="titolo">
                    <label for="titolo">Titolo</label>
                    <input type="text" name="titolo" id="titolo" required placeholder="Titolo">
                </div>
                
                <div class="descrizione">
                    <label for="trama">Trama</label>
                    <input type="text" name="trama" id="trama" required placeholder="Trama">
                </div>

                <label for="genere">Genere</label>
                <input type="text" name="genere" id="genere" required placeholder="Genere">

                <label for="durata">Durata</label>
                <input type="text" name="durata" id="durata" required placeholder="Durata">

                <label for="regista">Regista</label>
                <input type="text" name="regista" id="regista" required placeholder="Regista">

                <!-- <label for="trama">Descrizione</label>
                <input type="text" name="trama" id="trama" required placeholder="Trama"> -->
                
                <div class="prezzo">
                    <label for="prezzo">Prezzo</label>
                    <input type="text" name ="prezzo" id="prezzo">
                        <!-- <option value="prezzo">Scegli</option>
                        <option value="2">2.99</option>
                        <option value="3">3.99</option>
                        <option value="4">4.99</option>
                        <option value="5">5.99</option>
                    </select> -->
                    <input type="submit" value="Aggiungi">
                </div>
                
            
            </form>
      </div>
<jsp:include page="footer.jsp"/> 