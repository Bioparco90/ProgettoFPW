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
