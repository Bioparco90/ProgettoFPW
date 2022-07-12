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
        
        <div class="login col-9">
            <form action="login" method="post">
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
