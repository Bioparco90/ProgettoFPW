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
        
        <div class="login col-9">
            <form action="catalogo.jsp" method="post">
                <div id="username">
                    <label for="user">Username</label>
                    <input type="text" name="user" id="user" required placeholder="Username">
                </div>
                
                <div id="password">
                    <label for="psw">Password</label>
                    <input type="password" name="psw" id="psw" required placeholder="Password">
                    <input type="submit" value="Accedi">
                    <p>Non hai ancora un account? Registrati qui sotto</p>
                </div>
            </form>
        </div> 
        
        <div class="registrazione">
            <form action="login.jsp" method="post">
                <label for="nome">Nome</label>
                <input type="text" name="nome" id="nome" required placeholder="Nome">
                <label for="cognome">Cognome</label>
                <input type="text" name="cognome" id="cognome" required placeholder="Cognome">
                <label for="email">E-mail</label>
                <input type="text" name="email" id="email" required placeholder="Email">
                <label for="newpsw">Password</label>
                <input type="password" name="newpsw" id="newpsw" required placeholder="Password">
                <label for="confirmpsw">Conferma Password</label>
                <input type="password" name="confirmpsw" id="confirmpsw" required placeholder="Password">
                <input type="submit" value="Registrati">               
            </form>
        </div>
<jsp:include page="footer.jsp"/> 
