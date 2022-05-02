<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<jsp:include page="header.jsp"/>

    <body>
        <header>
            <a href="index.jsp">Mettere immagine</a>
            <h1><img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="400" height="200"></h1>
            <a href="login.jsp">Login</a>
        </header>
       
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="catalogo.jsp">Catalogo</a></li>  
                <li><a href="nuovoProdotto.jsp">Inserimento nuovo prodotto</a></li> 
            </ul>
        </nav>
        <br>
        <br>
        <br>
        <div>
            <form action="catalogo.jsp" method="post">
                <label for="user">Username</label>
                <input type="text" name="user" id="user" required placeholder="Username">
                <label for="psw">Password</label>
                <input type="password" name="psw" id="psw" required placeholder="Password">
                <input type="submit" value="Accedi">
                <p>Non hai ancora un account? Registrati qui sotto</p>
            </form>
            
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
        <br>
        <br>
        <br>
        <br>
        <br>     
        <footer>
            <div class="info">
                <p>EaSbronz</p>
                <p>Membro 1</p>
                <p>Membro 2</p>
                <p>Membro 3</p>
                <p>Membro 4</p>
            </div>
            
            
        </footer>
    </body>
</html>
