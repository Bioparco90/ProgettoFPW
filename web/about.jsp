<!DOCTYPE html>
<jsp:include page="header.jsp"/>
    <body>
        <header>
            <img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="350" height="150">
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
        <div class="about col-9 cols-12">
            <div class="col-9 cols-12">
                <img  class="about_img" title="Ceppitelli" src="img/ceppitelli.png">
                <p>Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et 
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam,
                    nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id
                    est laborum.
                </p>
            </div>
            
            <div class="col-9 cols-12">
                <img class="about_img" title="Deiola" src="img/deiola.png">
                <p>Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et 
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam,
                    nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id
                    est laborum.
                </p>
            </div>
            
            <div class="col-9 cols-12">
                <img  class="about_img" title="Lyko" src="img/lyko.png">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et 
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam,
                    nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id
                    est laborum.
                </p>
            </div>
            
            <div class="col-9 cols-12">
                <img class="about_img" title="Dalbert" src="img/dalbert.png">
                <p>Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et 
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam,
                    nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id
                    est laborum.
                </p>
            </div>
        </div>
<jsp:include page="footer.jsp"/>