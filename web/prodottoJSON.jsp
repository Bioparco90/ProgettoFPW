<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@taglib prefix="json" uri="http://www.atg.com/taglibs/json"%>

<json:object>
    <json:property name="locandina" value="${prodotto.getPathLocandina()}"/>
    <json:property name="movieTitle" value="${prodotto.getTitolo()}"/>
    <json:property name="trama" value="${prodotto.getTrama()}"/>
    <json:property name="durata" value="${prodotto.getDurata()}"/>
    <json:property name="genere" value="${prodotto.getGenere()}"/>
    <json:property name="regista" value="${prodotto.getRegista()}"/>
    <json:property name="prezzo" value="${prodotto.getPrezzo()}"/>
    <json:property name="uploader" value="${prodotto.getUsernameAggiunta()}"/>
</json:object>