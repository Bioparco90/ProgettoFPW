let fontSize = 16;

// $(document).ready(() => {
//     fontSize = localStorage.getItem('fontSize');
//     if (fontSize) {
//         $('body').css('font-size', fontSize + 'px');
//     }
// });

$('#normal-size').click(() => {
	const smallFontSize = 16;
	fontSize = smallFontSize;
	$('main').css('font-size', fontSize + 'px');
	// localStorage.setItem('fontSize', fontSize);
});

$('#bigger-size').click(() => {
	const defaultFontSize = 18;
	fontSize = defaultFontSize;
	$('main').css('font-size', fontSize + 'px');
	// localStorage.setItem('fontSize', fontSize);
});

$('#biggest-size').click(() => {
	const bigFontSize = 20;
	fontSize = bigFontSize;
	$('main').css('font-size', fontSize + 'px');
	// localStorage.setItem('fontSize', fontSize);
});

// NB: Alcune cose non sono perfettamente responsive, quindi si notano sovrapposizioni
// tipo l'utilissimo tasto "acquista" che va sotto la card con testo grande.
// Ciò può essere risolto settando 12- 14 -16 come sizes, ma il default normalmente
// è 16, inoltre si otterrebbe un testo abbastanza piccolo in certe pagine, sicuramente
// più piccolo di quanto vorremmo. Vedete voi il da farsi, dell'aspetto mi fotte fino a pagina 2.

// Le linee commentate servono a garantire la persistenza della scelta,
// come al solito prima implemento e poi leggo le specifiche.
