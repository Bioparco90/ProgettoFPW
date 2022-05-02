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
            <a href="login.html">Login</a>
        </header>
       
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="catalogo.jsp">Catalogo</a></li>  
                <li class="active"><a href="nuovoProdotto.html">Inserimento nuovo prodotto</a></li> 
            </ul>
        </nav>
        <br>
        <br>
        <br>
            <form action="index.jsp" method="post">
                <label for ="thumbnail">Aggiungi foto</label>
                <input type="file" id="thumbnail">
                <br>
                <label for="titolo">Titolo</label>
                <input type="text" name="titolo" id="titolo" required placeholder="Titolo">
                <br>
                <label for="descrizione">Descrizione</label>
                <input type="text" name="descrizione" id="descrizione" required placeholder="Descrizione">
                <br>
                <label for="prezzo">Prezzo</label>
                <select name ="prezzo" id="prezzo">
                    <option value="prezzo">Scegli</option>
                    <option value="2">2.99?</option>
                    <option value="3">3.99?</option>
                    <option value="4">4.99?</option>
                    <option value="5">5.99?</option>
                </select>
                <input type="submit" value="Accedi">
            
            </form>      
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
