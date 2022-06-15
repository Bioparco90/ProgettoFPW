<!DOCTYPE html>
<jsp:include page="header.jsp"/>
  <body>
        <header>
          <a href="index"><img title="Logo" alt="Logo del sito" src="img/fakeFlix_logo.png" width="350" height="150"></a>
        </header>
       
        <nav class="col-12">
            <ul>
                <li class="col-2"><a href="index">Home</a></li>
                <li class="col-2"><a href="about">About</a></li>
                <li class="col-2"><a href="catalogo">Catalogo</a></li>  
                <li class="active col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
                <li class="col-2">
                    <a href="login">
                        <input type="button" value="Login" class="loginButton">
                    </a>
                </li>
            </ul>
        </nav>
      
      <div class="nuovoProdottoBox col-9">
            <form action="nuovoProdotto" method="post" >
                <div class="thumbnail">
                    <label for ="thumbnail">Aggiungi foto</label>
                    <input type="file" id="thumbnail">
                </div>
                
                <div class="titolo">
                    <label for="titolo">Titolo</label>
                    <input type="text" name="titolo" id="titolo" required placeholder="Titolo">
                </div>
                
                <div class="descrizione">
                    <label for="descrizione">Descrizione</label>
                    <input type="text" name="descrizione" id="descrizione" required placeholder="Descrizione">
                </div>
                
                <div class="prezzo">
                    <label for="prezzo">Prezzo</label>
                    <select name ="prezzo" id="prezzo">
                        <option value="prezzo">Scegli</option>
                        <option value="2">2.99?</option>
                        <option value="3">3.99?</option>
                        <option value="4">4.99?</option>
                        <option value="5">5.99?</option>
                    </select>
                    <input type="submit" value="Aggiungi">
                </div>
                
            
            </form>
      </div>
<jsp:include page="footer.jsp"/> 