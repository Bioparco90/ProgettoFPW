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
                <li class="active"><a href="about.jsp">About</a></li>
                <li><a href="catalogo.jsp">Catalogo</a></li>  
                <li><a href="nuovoProdotto.jsp">Inserimento nuovo prodotto</a></li> 
            </ul>
        </nav>
        <br>
        <br>
        <br>
        <h2>Contenuto</h2>
        <br>
        <br>
        <br>
        <br>
        <br>     
<jsp:include page="footer.jsp"/> 
