const minLength = 3;
const passwordMinLength = 5;
const userPasswordMaxLength = 20;
const otherMaxLength = 50;

let countHandler = (id, maxLength) => {
    let remaining = maxLength - $('#' + id).val().length;
    $('#' + id + 'Counter').text(remaining + ' caratteri rimanenti');
}

// -------------------------- LOGIN -------------------------- //
$("#user").on("input", () => countHandler("user", userPasswordMaxLength));
$("#psw").on("input", () => countHandler("psw", userPasswordMaxLength));

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
    if (username.length < minLength) {
        $("#usernameError")
            .text("L'username deve avere un minimo di 3 caratteri")
            .show();
    } else if (password.length < passwordMinLength) {
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

$("#username").on("input", () => countHandler("username", userPasswordMaxLength));
$("#nome").on("input", () => countHandler("nome", otherMaxLength));
$("#cognome").on("input", () => countHandler("cognome", otherMaxLength));
$("#email").on("input", () => countHandler("email", otherMaxLength));
$("#citta").on("input", () => countHandler("citta", otherMaxLength));
$("#password").on("input", () => countHandler("password", userPasswordMaxLength));
$("#confirmpsw").on("input", () => countHandler("confirmpsw", userPasswordMaxLength));

/**
 * inserire qui i controlli relativi alla submit, alla validazione email (barbara, 
 * altrimenti devo copiare una regexp improbabile e che non saprei spiegare) e al confronto tra password. 
 * Seguire struttura form login o valutare la creazione di funzioni apposite.
 */



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