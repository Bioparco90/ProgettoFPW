// Controlla la cache in cerca di un'eventuale preferenza pregressa
const isDarkMode = localStorage.getItem('dark-mode');

// Se l'utente ha una preferenza salvata e questa è impostata sulla modalità dark, 
// aggiungi la classe "dark-mode" al body per abilitare la modalità scura.
// In prima istanza, non essendoci ancora una preferenza, il sito partirà in light mode.
if (isDarkMode === 'true') {
	$('body').addClass('dark-mode');
}

// Al click del tasto apposito, avviene il passaggio da una modalità all'altra.
// Infine viene salvata la nuova preferenza in cache.
$('#toggle').click(() => {
	$('body').toggleClass('dark-mode');
	localStorage.setItem('dark-mode', $('body').hasClass('dark-mode'));
});
