<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="header.jsp"/>
    <body>
        <header>
            <a href="index"><img id="logo" title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="350" height="150"></a>
        </header>
       
        <nav class="col-12">
            <ul>
                <li class="col-2"><a href="index">Home</a></li>
                <li class="col-2"><a href="about">About</a></li>
                <li class="col-2"><a href="catalogo">Catalogo</a></li>  
                <li class="col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
                <li class="col-2">
                    <a href="login">
                        <input type="button" value="Login" class="loginButton">
                    </a>
                </li>
            </ul>
        </nav>
        
        <div class="login col-6">
            <form action="login" method="post">
                <div class="loginTitle">Inserisci le tue credenziali</div>
                <div class="input username">
                    <input type="text" name="user" id="user" class="textbox" required placeholder="Username">
                </div>
                
                <div class="input password">
                    <input type="password" name="psw" id="psw" class="textbox" required placeholder="Password">
                </div>
                <div>
                    <input type="submit" class="submit" value="Accedi">       
                </div>
                <p>Non hai ancora un account? Registrati qui affianco</p>
            </form>
        </div> 
        
        <div class="registrazione login col-6">
            <form action="registrazione" method="post" enctype="multipart/form-data">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" required placeholder="Username">
                <label for="nome">Nome</label>
                <input type="text" name="nome" id="nome" required placeholder="Nome">
                <label for="cognome">Cognome</label>
                <input type="text" name="cognome" id="cognome" required placeholder="Cognome">
                <label for="email">E-mail</label>
                <input type="text" name="email" id="email" required placeholder="Email">
                <label for="citta">Città</label>
                <input type="text" name="citta" id="citta" required placeholder="citta">
                <label for="file">Foto:</label>
                <input type="file" id="file" name="file" accept="image/*" required>
                <label for="password">Password</label>
                <input type="password" name="password" id="password" required placeholder="Password">
                <label for="confirmpsw">Conferma Password</label>
                <input type="password" name="confirmpsw" id="confirmpsw" required placeholder="Password">
                <input type="submit" value="Registrati">               
            </form>
        </div>
<jsp:include page="footer.jsp"/> 
