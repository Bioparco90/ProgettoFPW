<!DOCTYPE html>
<jsp:include page="header.jsp"/>
    <body>
        <header>
            <a href="index"><img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="350" height="150"></a>
        </header>

        <nav class="col-12">
            <ul>
                <li class="col-2"><a href="index">Home</a></li>
                <li class="active col-2"><a href="about">About</a></li>
                <li class="col-2"><a href="catalogo">Catalogo</a></li>
                <li class="col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
                <li class="col-2">
                    <a href="login">
                        <input type="button" value="Login" class="loginButton">
                    </a>
                </li>
            </ul>
        </nav>


        <h2>ABOUT US</h2><!<!-- creazione di 4 div di equa dimensione, uno per ogni componente del gruppo -->
        <div class="about col-9 cols-12 aboutSection">
            <div class="col-9 cols-12">
                <img  class="about_img" title="Ceppitelli" src="img/ceppitelli.png">
                <p>Mirko Contini<br>
                Studente di informatica al secondo anno presso l'università di Cagliari, e dilpomato all'istituto Michele Giua,
                programmatore che conosce vari linguaggi tra cui C, C++, C#, java, javascript.
                </p>
            </div>
            
            <div class="col-9 cols-12">
                <img class="about_img" title="Deiola" src="img/deiola.png">
                <p>Marco Monni<br>
                Studente di informatica al secondo anno presso l'università di Cagliari,
                programmatore che conosce vari linguaggi tra cui C, C++, C#, java, javascript.
                </p>
            </div>
            
            <div class="col-9 cols-12">
                <img  class="about_img" title="Lyko" src="img/lyko.png">
                <p>Pietro Musiu<br>
                Studente di informatica al secondo anno presso l'università di Cagliari, e dilpomato all'istituto Michele Giua,
                programmatore che conosce vari linguaggi tra cui C, C++, C#, java, javascript.
                </p>
            </div>
            
            <div class="col-9 cols-12">
                <img class="about_img" title="Dalbert" src="img/dalbert.png">
                <p>Stefano Rocca<br>
                Studente di informatica al secondo anno presso l'università di Cagliari, e dilpomato all'istituto Michele Giua,
                programmatore che conosce vari linguaggi tra cui C, C++, C#, java, javascript.
                </p>
            </div>
        </div>
<jsp:include page="footer.jsp"/>