let fontSize = 16;

// $(document).ready(() => {
//     fontSize = localStorage.getItem('fontSize');
//     if (fontSize) {
//         $('body').css('font-size', fontSize + 'px');
//     }
// });

$('#decrease-size').click(() => {
    const smallFontSize = 14;
    fontSize = smallFontSize;
    $('body').css('font-size', fontSize + 'px');
    // localStorage.setItem('fontSize', fontSize);
});

$('#default-size').click(() => {
    const defaultFontSize = 16;
    fontSize = defaultFontSize;
    $('body').css('font-size', fontSize + 'px');
    // localStorage.setItem('fontSize', fontSize);
});

$('#increase-size').click(() => {
    const bigFontSize = 18;
    fontSize = bigFontSize;
    $('body').css('font-size', fontSize + 'px');
    // localStorage.setItem('fontSize', fontSize);
});

// NB: Alcune cose non sono perfettamente responsive, quindi si notano sovrapposizioni
// tipo l'utilissimo tasto "acquista" che va sotto la card con testo grande. 
// Ciò può essere risolto settando 12- 14 -16 come sizes, ma il default normalmente
// è 16, inoltre si otterrebbe un testo abbastanza piccolo in certe pagine, sicuramente
// più piccolo di quanto vorremmo. Vedete voi il da farsi, dell'aspetto mi fotte fino a pagina 2.

// Le linee commentate servono a garantire la persistenza della scelta, 
// come al solito prima implemento e poi leggo le specifiche.
