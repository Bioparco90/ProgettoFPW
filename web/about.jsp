<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
    <body>
        <header>
            <img src="img/favicon.png" alt="logo-fakeflix">
            <a href="index"><img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="350" height="150"></a>
        </header>

        <nav class="col-12">
            <ul>
                <li class="col-2"><a href="index">Home</a></li>
                <li class="active col-2"><a href="about">About</a></li>
                <li class="col-2"><a href="catalogo">Catalogo</a></li>
                <li class="col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
                
                <c:if test="${not empty user}">
                    
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
                </c:if>
                   
                <c:if test="${empty user}">
                    <li class="col-2">
                        <a href="login">
                            <input type="button" value="Login" class="loginButton">
                        </a>
                    </li>    
                </c:if>
            </ul>
        </nav>

        <div class="col-12 contenuto">
             <h2>ABOUT US</h2>
        <main class= "col-8 about">
            <div class="col-12">
                <img  class="about_img" title="Ceppitelli" alt="foto Mirko Contini" src="img/users/ceppitelli.png">
                <p>Mirko Contini<br>
                Studente di informatica al secondo anno presso l'università di Cagliari, e dilpomato all'istituto Michele Giua,
                programmatore che conosce vari linguaggi tra cui C, C++, C#, java, javascript.
                </p>
            </div>
            
            <div class="col-12">
                <img class="about_img" title="Deiola" alt="foto Marco Monni" src="img/users/deiola.png">
                <p>Marco Monni<br>
                Studente di informatica al secondo anno presso l'università di Cagliari,
                programmatore che conosce vari linguaggi tra cui C, C++, C#, java, javascript.
                </p>
            </div>
            
            <div class="col-12">
                <img  class="about_img" title="Lyko" alt="foto Pietro Musiu" src="img/users/lyko.png">
                <p>Pietro Musiu<br>
                Studente di informatica al secondo anno presso l'università di Cagliari, e dilpomato all'istituto Michele Giua,
                programmatore che conosce vari linguaggi tra cui C, C++, C#, java, javascript.
                </p>
            </div>
            
            <div class="col-12">
                <img class="about_img" title="Dalbert" alt="foto Stefano Rocca" src="img/users/dalbert.png">
                <p>Stefano Rocca<br>
                Studente di informatica al secondo anno presso l'università di Cagliari, e dilpomato all'istituto Michele Giua,
                programmatore che conosce vari linguaggi tra cui C, C++, C#, java, javascript.
                </p>
            </div>
        </main>
        
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
                
                <a href="https://www.adidas.it/"><img src="img/Logo_Adidas.png" alt="sponsor Adidas" class="col-6"></a>
            
                <a href="https://unica.it/unica/"><img src="img/Logo_uni_1.png" alt="sponsor Unica" class="col-6"> </a>    
            </article>
            
        </aside>
        </div>
       
<jsp:include page="footer.jsp"/>