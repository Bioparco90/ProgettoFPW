const minLength = 3;
const passwordMinLength = 5;
const userPasswordMaxLength = 20;
const otherMaxLength = 50;

let countHandler = (id, maxLength) => {
	let remaining = maxLength - $(`#${id}`).val().length;
	$(`#${id}Counter`).text(`${remaining} caratteri rimanenti`);
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
			.text(`L'username deve avere un minimo di ${minLength} caratteri`)
			.show();
	} else if (password.length < passwordMinLength) {
		$("#passwordError")
			.text(`La password deve avere un minimo di ${passwordMinLength} caratteri`)
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

$("#registrationForm").submit(function (event) {
	event.preventDefault();

	let username = $("#username").val();
	let nome = $("#nome").val();
	let cognome = $("#cognome").val();
	let email = $("#email").val();
	let citta = $("#citta").val();
	let password = $("#password").val();
	let confirmPassword = $("#confirmpsw").val();

	$("#usernameRegError").hide();
	$("#nomeError").hide();
	$("#cognomeError").hide();
	$("#emailError").hide();
	$("#cittaError").hide();
	$("#passwordRegError").hide();
	$("#confirmpswError").hide();

	if (username.length < minLength) {
		$("#usernameRegError")
			.text(`L'username deve avere un minimo di ${minLength} caratteri`)
			.show();
	} else if (nome.length < minLength) {
		$("#nomeError")
			.text(`Il nome deve avere un minimo di ${minLength} caratteri`)
			.show();
	} else if (cognome.length < minLength) {
		$("#cognomeError")
			.text(`Il cognome deve avere un minimo di ${minLength} caratteri`)
			.show();
	} else if (email.length < minLength) {
		$("#emailError")
			.text(`La mail deve avere un minimo di ${minLength} caratteri`)
			.show();
	} else if (citta.length < minLength) {
		$("#cittaError")
			.text(`La citta' deve avere un minimo di ${minLength} caratteri`)
			.show();
	} else if (password.length < passwordMinLength) {
		$("#passwordError")
			.text(`La password deve avere un minimo di ${passwordMinLength} caratteri`)
			.show();
	} else if (confirmPassword !== password) {
		$("#confirmpswError")
			.text("Le password non corrispondono")
			.show();
	} else {
		// Se i campi di input sono validi, invia il modulo
		this.submit();
	}
})
