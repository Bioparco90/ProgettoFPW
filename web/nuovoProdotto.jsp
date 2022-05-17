<!DOCTYPE html>
<jsp:include page="header.jsp"/>

    <body>
        <header>
            <h1><img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="400" height="200"></h1>
        </header>
       
        <nav class="col-12">
            <ul>
                <li class="col-2"><a href="index.jsp">Home</a></li>
                <li class="col-2"><a href="about.jsp">About</a></li>
                <li class="col-2"><a href="catalogo.jsp">Catalogo</a></li>  
                <li class="active col-12"><a href="nuovoProdotto.jsp">Nuovo prodotto</a></li> 
                <li class="col-2"><a href="login.jsp">Login</a></li>
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
<jsp:include page="footer.jsp"/> 