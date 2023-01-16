package it.easbronz.fakeFlix.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import javax.servlet.http.Part;
import it.easbronz.fakeFlix.exceptions.InvalidParamException;

public class Utils {

    public static <T> void checkNull(String name, T param) throws InvalidParamException {
        if (param == null) {
            throw new InvalidParamException("Valore del campo " + name + " mancante");
        }
    }

    public static void checkString(String name, String param, int min, int max)
            throws InvalidParamException {
        checkNull(name, param);
        if (param.length() < min || param.length() > max) {
            throw new InvalidParamException("Il valore del campo " + name
                    + " non rispetta la dimensione richiesta tra " + min + " e "
                    + max + " caratteri");
        }
    }

    public static void checkInteger(String name, int param)
            throws InvalidParamException, NumberFormatException {

        checkNull(name, param);
        if (param <= 0) {
            throw new InvalidParamException("Il campo " + name
                    + " deve avere un valore maggiore di zero");
        }
    }

    public static void checkFloat(String name, float param)
            throws InvalidParamException, NumberFormatException {

        checkNull(name, param);
        if (param <= 0) {
            throw new InvalidParamException("Il campo " + name
                    + " deve avere un valore maggiore di zero");
        }
    }

    public static String getPathImg(Part file, String entity, String rootPath)
            throws IOException {
        try ( InputStream contenutoFile = file.getInputStream()) {
            /*File daSalvare = new File(
                    "C:/Users/monni/Desktop/progettoFPW/web/img/" + entity + "/" + file.getSubmittedFileName());*/
            File daSalvare = new File(
                    rootPath + entity + "/" + file.getSubmittedFileName());
            Files.copy(contenutoFile, daSalvare.toPath(), StandardCopyOption.REPLACE_EXISTING);
            String url = "img/" + entity + "/" + file.getSubmittedFileName();
            return url;
        }
    }

    public static boolean isInteger(String name, String value) {
        try {
            Integer.valueOf(value);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public static boolean isFloat(String name, String value) {
        try {
            Float.valueOf(value);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
