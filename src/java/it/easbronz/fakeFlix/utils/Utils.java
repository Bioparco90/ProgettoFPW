package it.easbronz.fakeFlix.utils;

import java.time.LocalDateTime;
import java.time.Instant;
import java.time.ZoneOffset;

import it.easbronz.fakeFlix.exceptions.InvalidParamException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author monni
 */
public class Utils {

    public static void checkNull(String name, String param) throws InvalidParamException {
        if (param == null)
            throw new InvalidParamException("Valore del campo " + name + " mancante");
    }

    public static void checkString(String name, String param, int min, int max)
            throws InvalidParamException {
        checkNull(name, param);
        if (param.length() < min || param.length() > max)
            throw new InvalidParamException("Il valore del campo " + name +
                    " non rispetta la dimensione richiesta tra " + min + " e " +
                    max + " caratteri");
    }

    public static void checkInteger(String name, String param, int min, int max)
            throws InvalidParamException {

        checkNull(name, param);
        try {
            int valore = Integer.valueOf(param);
            if (valore < min || valore > max)
                throw new InvalidParamException("Il campo " + name +
                        " deve avere un valore compreso tra " + min + " e " + max);
        } catch (NumberFormatException e) {
            throw new InvalidParamException("Il campo " + name + " deve "
                    + "contenere un numero intero");
        }
    }

    public static String convertTime(long time) {
        LocalDateTime localDt = LocalDateTime.ofInstant(
                Instant.ofEpochMilli(time), ZoneOffset.UTC);
        return localDt.toString();
    }

    public static boolean login(String user, String password)
            throws InvalidParamException {

        int index;

        List<String> listaAutori = new ArrayList<>();
        listaAutori.add("Giovanni Soli");
        listaAutori.add("Jack Cabras");
        listaAutori.add("Aldo Pelosi");

        List<String> listaPassword = new ArrayList<>();
        listaPassword.add("Giovanni Soli");
        listaPassword.add("Jack Cabras");
        listaPassword.add("Aldo Pelosi");

        if (!listaAutori.contains(user))
            throw new InvalidParamException("Username errato");
        else {
            index = listaAutori.indexOf(user);
            if (!listaPassword.get(index).equals(password))
                throw new InvalidParamException("Password errata");
        }

        return true;
    }
}
