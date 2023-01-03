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
                <li class="active col-2"><a href="catalogo">Catalogo</a></li>  
                <li class="col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
                
                <li class="col-2">
                    <a href="areaPersonale">
                        <input type="button" value="Profilo" class="loginButton">
                    </a>
                </li>
                
                <li class="col-2">
                    <a href="logout">
                        <input type="button" value="Logout" class="loginButton">
                    </a>
                </li>
            </ul>
        </nav>
     
        <div class="col-12 contenuto">
            <h2>CATALOGO</h2>
            <main class="col-8">
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
                    <div >
                        <button id="prevProduct" class="carosuelButton"> < </button>
                        <button id="nextProduct" class="carosuelButton"> > </button>
                    </div>
                </article>   
            </main>

                    
          <aside class="col-4">
            
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
            
            <article class="sponsors col-12">
                <a href="https://www.adidas.it/"><img src="img/Logo_Adidas.png" class="col-6 ichnusa"></a>
            
                <a href="https://unica.it/unica/"><img src="img/Logo_uni_1.png" class="col-6"> </a>    
            </article>
            
        </aside>       
        </div>
                
        <script src="js/carousel.js"></script>
<jsp:include page="footer.jsp"/> 
