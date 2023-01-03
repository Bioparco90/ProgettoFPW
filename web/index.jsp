<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
    <body>
        <header>
            <!-- Logo forse da cambiare per evitare questa fastisiosa ripetizione dovuta alle specifiche 
                del progetto. Suggerirei un logo tipo il favicon che ho messo qualche settimana fa. -->
            <img src="img/favicon.png" alt="logo-fakeflix">
            <a href="index"><img title="fakeflix" alt="fakeflix" src="img/fakeFlix_logo.png" width="350" height="150"></a>
            <!-- <h1>FakeFlix</h1> -->
        </header>
       
        <nav class="col-12">
            <ul>
                <li class="active col-2"><a href="index">Home</a></li>
                <li class="col-2"><a href="about">About</a></li>
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
            <h2>L'ATTIVITA'</h2>
        <main class="col-8">
            <article>
                 <p>
                     FakeFlix è un servizio di noleggio che ti consente di guardare film e serie TV sul tuo dispositivo.<br>

                     Il Catalogo FakeFlix mette a disposizione una vasta scelta di serie TV e film acquistabili dopo aver creato il tuo account personale.<br>

                     Per creare l'account è sufficiente spostarsi sulla pagina di Login e inserire i tuoi dati nel form di registrazione. <br>

                     Per qualsiasi problema non esitare a contattare il nostro team di assistenza al cliente al numero 070-690-420. <br>

                    -Team Easbronz 
                </p>
            </article>
            
            <div>
                <img src="img/logo.gif" class="gifLogo">
            </div>
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
            
            <article class="sponsors">
                
                <a href="https://www.adidas.it/"><img src="img/Logo_Adidas.png" class="col-6"></a>
            
                <a href="https://unica.it/unica/"><img src="img/Logo_uni_1.png" class="col-6"> </a>    
            </article>
            
        </aside>
        </div>
        

<jsp:include page="footer.jsp"/> 