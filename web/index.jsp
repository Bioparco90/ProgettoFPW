<%@ page contentType="text/html; charset=UTF-8" %>
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
                <li class="col-2 invisible">.---------</li>
                <li class="col-2">
                    <a href="login">
                        <input type="button" value="Login" class="loginButton">
                    </a>
                </li>
                
            </ul>
        </nav>

        <h2>L'attività</h2>
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
        </main>
        
        <aside class="col-4">
            <article>
                <img src="img/Logo_Ichnusa.png" class="col-2">
                <p>Sponsored by</p>
                <img src="img/Logo_uni.png" class="col-2">     
            </article>
            
            <article class="card col-2">
                <img src="img/products/pulp-fiction1.jpg" alt="locandina">
                <h2 id="movieTitle">Pulp Fiction</h2>
                <p>Una misteriosa valigetta al centro delle vicende di un cast stellare</p>
                <p>Durata: 190'</p> 
                <p>Genere: Cult</p>
                <p> Rating: * * * * *</p>
                <p>Prezzo: $ 9,99</p>
                <input type="button"value="Acquista" class="myButton">
            </article>
            
        </aside>

<jsp:include page="footer.jsp"/> 