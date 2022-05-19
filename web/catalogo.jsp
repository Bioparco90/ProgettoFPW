<!DOCTYPE html>
<jsp:include page="header.jsp"/>
    <body>
        <header>
            <img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="350" height="150">
        </header>
       
        <nav class="col-12">
            <ul>
                <li class="col-2"><a href="index.jsp">Home</a></li>
                <li class="col-2"><a href="about.jsp">About</a></li>
                <li class="active col-2"><a href="catalogo.jsp">Catalogo</a></li>  
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
     
        <h2>Contenuto</h2>
    
<jsp:include page="footer.jsp"/> 
