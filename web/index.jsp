<!DOCTYPE html>

<jsp:include page="header.jsp"/>

    <body>
        <header>
            <!-- Logo forse da cambiare per evitare questa fastisiosa ripetizione dovuta alle specifiche 
                del progetto. Suggerirei un logo tipo il favicon che ho messo qualche settimana fa. -->
            <img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="400" height="200">
            <h1>FakeFlix</h1>
        </header>
       
        <nav>
            <ul>
                <li class="active"><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="catalogo.jsp">Catalogo</a></li>  
                <li><a href="nuovoProdotto.jsp">Inserimento nuovo prodotto</a></li> 
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </nav>

        <h2>Carosello, serve Javascript</h2>
        <main>
            <article>
                contenuto vario 1
            </article>
            <article>
                contenuto vario 2
            </article>
            <article>
                eccetera
            </article>
        </main>

        <aside>
            contenuto secondario
        </aside>

        <footer>
            <div class="info">
                <p>EaSbronz</p>
                <p>Membro 1</p>
                <p>Membro 2</p>
                <p>Membro 3</p>
                <p>Membro 4</p>
                <p>indirizzo@easbronz.it</p>
            </div>
        </footer>

    </body>
</html>
