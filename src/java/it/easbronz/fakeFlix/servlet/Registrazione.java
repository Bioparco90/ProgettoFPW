package it.easbronz.fakeFlix.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.postgresql.util.PSQLException;

import it.easbronz.fakeFlix.exceptions.InvalidParamException;
import it.easbronz.fakeFlix.model.Utente;
import it.easbronz.fakeFlix.model.UtenteFactory;
import it.easbronz.fakeFlix.utils.Utils;

@WebServlet(name = "Registrazione", urlPatterns = { "/registrazione" })
@MultipartConfig
public class Registrazione extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String osName = System.getProperty("os.name").toLowerCase();
        String rootPath = getServletContext().getRealPath("/") + "img/";
        // rootPath = rootPath.replace("build\\", "");
        if(osName.contains("windows"))
            rootPath = rootPath.replaceAll("\\\\", "/");

        try {
            String username = request.getParameter("username");
            String nome = request.getParameter("nome");
            String cognome = request.getParameter("cognome");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String citta = request.getParameter("citta");

            Part file = request.getPart("file");
            String foto = Utils.getPathImg(file, "users", rootPath);

            final int MIN_LENGTH = 3;
            final int PASSWORD_MIN_LENGTH = 5;
            final int USERNAME_PASSWORD_MAX_LENGTH = 20;
            final int OTHER_MAX_LENGTH = 50;

            Utils.checkString("Username", username, MIN_LENGTH, USERNAME_PASSWORD_MAX_LENGTH);
            Utils.checkString("Nome", nome, MIN_LENGTH, OTHER_MAX_LENGTH);
            Utils.checkString("Cognome", cognome, MIN_LENGTH, OTHER_MAX_LENGTH);
            Utils.checkString("Email", email, MIN_LENGTH, OTHER_MAX_LENGTH);
            Utils.checkString("Password", password, PASSWORD_MIN_LENGTH, USERNAME_PASSWORD_MAX_LENGTH);
            Utils.checkString("Città", citta, MIN_LENGTH, OTHER_MAX_LENGTH);
            Utils.checkString("Foto", foto, 0, 200);

            Map<String, String> utenteMap = new HashMap<>();
            utenteMap.put("username", username);
            utenteMap.put("nome", nome);
            utenteMap.put("cognome", cognome);
            utenteMap.put("email", email);
            utenteMap.put("password", password);
            utenteMap.put("citta", citta);
            utenteMap.put("foto", foto);

            Utente utente = UtenteFactory.getInstance().createUtente(utenteMap);
            UtenteFactory.getInstance().insertUtente(utente);

            request.setAttribute("outputMessage", "Utente registrato con successo");
            request.setAttribute("previousPage", "login");
            request.getRequestDispatcher("outputPage.jsp").forward(request, response);

        } catch (InvalidParamException | IOException e) {
            request.setAttribute("outputMessage", e.getMessage());
            request.setAttribute("previousPage", "login");
            request.getRequestDispatcher("outputPage.jsp").forward(request, response);
        } catch (PSQLException e) {
            request.setAttribute("outputMessage", "Nome utente già in uso");
            request.setAttribute("previousPage", "login");
            request.getRequestDispatcher("outputPage.jsp").forward(request, response);
        } catch (SQLException e) {
            Logger.getLogger(UtenteFactory.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
