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
                <li class="active col-2"><a href="catalogo">Catalogo</a></li>  
                <li class="col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
                <li class="col-2">
                    <a href="login">
                        <input type="button" value="Login" class="loginButton">
                    </a>
                </li>
            </ul>
        </nav>
     
        <div>
            <div class="col-1">
                <button id="prevProduct"> < </button>
            </div>
            <div class="col-10">
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
            <div class="col-1">
                <button id="nextProduct"> > </button>
            </div>
        </div>
    
<jsp:include page="footer.jsp"/> 
