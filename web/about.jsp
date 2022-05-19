<!DOCTYPE html>
<jsp:include page="header.jsp"/>
    <body>
        <header>
            <img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="400" height="200">

        </header>

        <nav class="col-12">
            <ul>
                <li class="col-2"><a href="index.jsp">Home</a></li>
                <li class="active col-2"><a href="about.jsp">About</a></li>
                <li class="col-2"><a href="catalogo.jsp">Catalogo</a></li>
                <li class="col-2"><a href="nuovoProdotto.jsp">Nuovo prodotto</a></li> 
                <li class="col-2">
                    <form>
                        <a href="login.jsp">
                            <input type="button" value="Login" class="loginButton">
                        </a>
                    </form>
                </li>
            </ul>
        </nav>


        <h2>ABOUT US</h2><!<!-- creazione di 4 div di equa dimensione, uno per ogni componente del gruppo -->
        <a class="about">Siamo quattro laureandi all'università di cagliari indirizzo informatico</a>
        <div class="about">
            <img  class="about_img" title="Ceppitelli" src="img/ceppitelli.png">
           Marco Monni programmatore nell'ambito dello sviluppo web che si diletta da auto didatta nello sviluppo di web app
            <br>
        </div> 
        <div class="about">
            <img class="about_img" title="Deiola" src="img/deiola.png">
            Mirko Contini programmatore 
            <br>
        </div>
        <div class="about">
            <img  class="about_img" title="Lyko" src="img/lyko.png">
            Pietro Musiu
            <br>
        </div>
        <div class="about">
            <img class="about_img" title="Dalbert" src="img/dalbert.png">
            Stefano Rocca
            <br>
        </div>
<jsp:include page="footer.jsp"/>