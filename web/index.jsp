<!DOCTYPE html>

<jsp:include page="header.jsp"/>

    <body>
        <header>
            <!-- Logo forse da cambiare per evitare questa fastisiosa ripetizione dovuta alle specifiche 
                del progetto. Suggerirei un logo tipo il favicon che ho messo qualche settimana fa. -->
            <img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="400" height="200">
            <!-- <h1>FakeFlix</h1> -->
        </header>
       
        <nav class="col-12">
            <ul>
                <li class="active col-2"><a href="index.jsp">Home</a></li>
                <li class="col-2"><a href="about.jsp">About</a></li>
                <li class="col-2"><a href="catalogo.jsp">Catalogo</a></li>  
                <li class="col-2"><a href="nuovoProdotto.jsp">Nuovo prodotto</a></li> 
                <li class="col-2"><a href="login.jsp">Login</a></li>
            </ul>
        </nav>

        <h2>Film in evidenza</h2>
        <main>
            <article class="card col-3">
                <img src="img/pulp-fiction.jpg" alt="locandina">
                <h2>Pulp Fiction</h2>
                <p>Una misteriosa valigetta al centro delle vicende di un cast stellare</p>
                <p>$ 9,99</p>
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
<jsp:include page="footer.jsp"/> 