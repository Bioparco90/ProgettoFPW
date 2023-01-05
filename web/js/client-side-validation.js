let countHandler = (id, maxLength) => {
    let remaining = maxLength - $('#' + id).val().length;
    $('#' + id + 'Counter').text(remaining + ' caratteri rimanenti');
}

// -------------------------- LOGIN -------------------------- //
$("#user").on("input", () => countHandler("user", 20));
$("#psw").on("input", () => countHandler("psw", 50));

$("#loginForm").submit(function (event) {
    // Previene l'invio del modulo
    event.preventDefault();

    // Ottiene i valori dei campi di input
    let username = $("#user").val();
    let password = $("#psw").val();

    // Nasconde i messaggi di errore, in prima istanza non ci servono
    $("#usernameError").hide();
    $("#passwordError").hide();

    // Verifica se l'utente ha inserito dati della corretta lunghezza
    if (username.length < 3) {
        $("#usernameError")
            .text("L'username deve avere un minimo di 3 caratteri")
            .show();
    } else if (password.length < 5) {
        $("#passwordError")
            .text("La password deve avere un minimo di 5 caratteri")
            .show();
    } else {
        // Se i campi di input sono validi, invia il modulo
        this.submit();
    }
});

// -------------------------- REGISTRAZIONE -------------------------- //
$("#fileBtn").click(() => {
    $("#file").click();
})



// -------------------------- APPUNTI -------------------------- //
// Aggiorna il contatore dei caratteri rimanenti ad ogni input dell'utente
// $("#user").on("input", function () {
//     let remaining = 20 - $("#user").val().length;
//     $("#usernameCounter").text(remaining + " caratteri rimanenti");
// });
// $("#psw").on("input", () => {
//     let remaining = 50 - $("#psw").val().length;
//     $("#passwordCounter").text(remaining + " caratteri rimanenti");
// });