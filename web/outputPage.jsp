<%@ page contentType="text/html; charset=UTF-8" %>

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
            <li class="col-2"><a href="nuovoProdotto">Nuovo prodotto</a></li> 
            <li class="col-2">
                <a href="login">
                    <input type="button" value="Login" class="loginButton">
                </a>
            </li>
        </ul>
    </nav>

    <div>
        <h1>${outputMessage}</h1>
        <a href="${previousPage}"><button>Indietro</button></a>
    </div>
</body>