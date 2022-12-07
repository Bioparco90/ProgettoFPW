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
        
        <main class="col-12">
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
        
        <div class="registrazione col-6">
            <form action="registrazione" method="post" enctype="multipart/form-data">
                <div class="regTitle">Registrati</div>
                <div class="col-6">
                    <div class="input usernamereg">
                    <input type="text" name="username" id="username" class="textbox" required placeholder="Username">
                </div>
                <div class="input nome">
                     <input type="text" name="nome" id="nome" class="textbox" required placeholder="Nome">
                </div>
                <div class="input cognome">
                    <input type="text" name="cognome" id="cognome" class="textbox" required placeholder="Cognome">
                </div>
                <div class="input email">
                   <input type="text" name="email" id="email" class="textbox" required placeholder="Email"> 
                </div>
                </div>
                
                <div class="col-6">
                   <div class="input citta">
                        <input type="text" name="citta" id="citta" class="textbox" required placeholder="Citta">  
                    </div>
                    <div class="input regpassword">
                        <input type="password" name="password" id="password" class="textbox" required placeholder="Password"> 
                    </div>
                    <div class="input confirmpsw">
                        <input type="password" name="confirmpsw" id="confirmpsw"  class="textbox" required placeholder="Conferma password">
                    </div> 
                    
                    <div class="input thumbnail">
                         <label for="file" class="file">Scegli immagine</label>
                        <input type="file" id="file" name="file"  accept="image/*" required>
                    </div>
                </div>                
                <div>
                   <input type="submit" class="submit" value="Registrati">  
                </div>
                              
            </form>
        </div>
        </main>
        
<jsp:include page="footer.jsp"/> 
