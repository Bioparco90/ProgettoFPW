let offset = 0;
$("#prevProduct").click(() => {
    if (offset > 0) offset--;
    $.ajax({
        url: "catalogo",
        data: {
            offsetId: offset,
        },
        dataType: "json",
        success: (data, state) => {
            aggiornaProdotto(data);
        },
        error: (data, state) => { },
    });
});

$("#nextProduct").click(() => {
    offset++;
    $.ajax({
        url: "catalogo",
        data: {
            offsetId: offset,
        },
        dataType: "json",
        success: (data, state) => {
            if (data.user === "") offset--;
            else aggiornaProdotto(data);
        },
        error: (data, state) => { },
    });
});

let aggiornaProdotto = (prodotto) => {
    $("#locandina").attr("src", `${prodotto.locandina}`);
    $("#movieTitle").text(prodotto.movieTitle);
    $("#trama").text(prodotto.trama);
    $("#durata").html(`Durata: ${prodotto.durata}`);
    $("#genere").html(`Genere: ${prodotto.genere}`);
    $("#regista").html(`Regista: ${prodotto.regista}`);
    $("#prezzo").html(`Prezzo: € ${prodotto.prezzo}`);
    $("#uploader").html(`Aggiunto da: ${prodotto.uploader}`);
};