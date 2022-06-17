package it.easbronz.fakeFlix.utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import javax.servlet.http.Part;
import it.easbronz.fakeFlix.exceptions.InvalidParamException;

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

    public static void checkFloat(String name, String param)
            throws InvalidParamException {

        checkNull(name, param);
        try {
            float valore = Float.valueOf(param);
            if (valore < 0)
                throw new InvalidParamException("Il campo " + name +
                        " deve avere un valore maggiore di zero");
        } catch (NumberFormatException e) {
            throw new InvalidParamException("Il campo " + name + " deve "
                    + "contenere un numero decimale");
        }
    }

    public static String getPathImg(Part file, String entity)
            throws IOException {
        try (InputStream contenutoFile = file.getInputStream()) {
            File daSalvare = new File(
                    "C:/Users/monni/Desktop/progettoFPW/web/img/" + entity + "/" + file.getSubmittedFileName());
            Files.copy(contenutoFile, daSalvare.toPath(), StandardCopyOption.REPLACE_EXISTING);
            String url = "img/" + entity + "/" + file.getSubmittedFileName();
            return url;
        }
    }
}
