<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

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
            <li class="col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
            <li class="col-2">
                <a href="logout">
                    <input type="button" value="Logout" class="loginButton">
                </a>
            </li>
        </ul>
    </nav>
    
    <div class="contenuto col-12">
        <h1>Autenticazione effettuata. Benvenuto, ${user}</h1>

    <div id="infoUtente" class="col-8 info">
        <img src="${utente.getFoto()}" alt="immagine-utente">
        <p>Username: ${utente.getUsername()}</p>
        <p>Nome: ${utente.getNome()}</p>
        <p>Cognome: ${utente.getCognome()}</p>
        <p>Indirizzo e-mail: ${utente.getEmail()}</p>
        <p>Città: ${utente.getCitta()}</p>
    </div>
    
    <aside class="col-4">
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
                
                <a href="https://www.adidas.it/"><img src="img/Logo_Adidas.png" class="col-6"></a>
            
                <a href="https://unica.it/unica/"><img src="img/Logo_uni_1.png" class="col-6"> </a>    
            </article>
            
        </aside>
    
        <c:forEach items="${listaProdottiAggiunti}" var="prodotto">
            <div id="prodottiAggiunti">
                <article class="card col-2">
                    <img id="locandina" src="${prodotto.getPathLocandina()}" alt="locandina">
                    <h2 id="movieTitle">${prodotto.getTitolo()}</h2>
                    <p id="trama">${prodotto.getTrama()}</p>
                    <p id="durata">Durata: ${prodotto.getDurata()} min.</p> 
                    <p id="genere">Genere: ${prodotto.getGenere()}</p>
                    <p id="regista">Regista: ${prodotto.getRegista()}</p>
                    <p id="prezzo">Prezzo: € ${prodotto.getPrezzo()}</p>
                    <p id="uploader">Aggiunto da: ${prodotto.getUsernameAggiunta()}</p>
                    <input type="button"value="Acquista" class="myButton">
                </article>
            </div>
        </c:forEach>
    </div>

    

    

<jsp:include page="footer.jsp"/>
</body>