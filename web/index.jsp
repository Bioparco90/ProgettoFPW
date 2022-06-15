<!DOCTYPE html>
<jsp:include page="header.jsp"/>
    <body>
        <header>
            <!-- Logo forse da cambiare per evitare questa fastisiosa ripetizione dovuta alle specifiche 
                del progetto. Suggerirei un logo tipo il favicon che ho messo qualche settimana fa. -->
            <a href="index"><img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="350" height="150"></a>
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

        <h2>Film in evidenza</h2>
        <main class="col-12">
            <article class="card col-2">
                <img src="img/pulp-fiction1.jpg" alt="locandina">
                <h2 id="movieTitle">Pulp Fiction</h2>
                <p>Una misteriosa valigetta al centro delle vicende di un cast stellare</p>
                <p>Durata: 190'</p> 
                <p>Genere: Cult</p>
                <p> Rating: * * * * *</p>
                <p>Prezzo: $ 9,99</p>
                <input type="button"value="Acquista" class="myButton">
            </article>
            <article class="card col-2">
                <img src="img/pulp-fiction1.jpg" alt="locandina">
                <h2 id="movieTitle">Pulp Fiction</h2>
                <p>Una misteriosa valigetta al centro delle vicende di un cast stellare</p>
                <p>Durata: 190'</p> 
                <p>Genere: Cult</p>
                <p> Rating: * * * * *</p>
                <p>Prezzo: $ 9,99</p>
                <input type="button"value="Acquista" class="myButton">
            </article>
            
            <article class="col-2">
                <img src="img/fakecola.gif" class="adv_img">
            </article>

        </main>

<jsp:include page="footer.jsp"/> 