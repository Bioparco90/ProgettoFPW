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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.postgresql.util.PSQLException;

import it.easbronz.fakeFlix.exceptions.InvalidParamException;
import it.easbronz.fakeFlix.model.Prodotto;
import it.easbronz.fakeFlix.model.ProdottoFactory;
import it.easbronz.fakeFlix.model.UtenteFactory;
import it.easbronz.fakeFlix.utils.Utils;

@WebServlet(name = "NuovoProdotto", urlPatterns = { "/nuovoProdotto" })
@MultipartConfig
public class NuovoProdotto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("nuovoProdotto.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        String rootPath = getServletContext().getRealPath("/") + "img/";
        rootPath = rootPath.replace("build\\", "");
        rootPath = rootPath.replaceAll("\\\\", "/");
        // System.out.println("This is the root path: " + rootPath);
        
        try {
            if (session != null && session.getAttribute("user") != null) {
                String titolo = request.getParameter("titolo");
                String trama = request.getParameter("trama");
                String genere = request.getParameter("genere");
                String durataPreCheck = request.getParameter("durata");
                String regista = request.getParameter("regista");
                String prezzoPreCheck = request.getParameter("prezzo");
                String uploader = (String) session.getAttribute("user");

                Part file = request.getPart("locandina");
                String locandina = Utils.getPathImg(file, "products", rootPath);

                Utils.checkString("Titolo", titolo, 1, 50);
                Utils.checkString("Trama", trama, 1, 200);
                Utils.checkString("Genere", genere, 1, 20);
                if (!Utils.isInteger("Durata", durataPreCheck)) {
                    throw new NumberFormatException("Il campo durata deve contenere un numero intero");
                }
                if (!Utils.isFloat("Prezzo", prezzoPreCheck)) {
                    throw new NumberFormatException("Il campo prezzo deve contenere un numero decimale");
                }
                int durata = Integer.valueOf(durataPreCheck);
                float prezzo = Float.valueOf(prezzoPreCheck);
                Utils.checkInteger("Durata", durata);
                Utils.checkString("Regista", regista, 1, 50);
                Utils.checkFloat("Prezzo", prezzo);
                Utils.checkString("Uploader", uploader, 3, 20);
                Utils.checkString("Locandina", locandina, 1, 200);

                Map<String, Object> prodottoMap = new HashMap<>();
                prodottoMap.put("titolo", titolo);
                prodottoMap.put("trama", trama);
                prodottoMap.put("genere", genere);
                prodottoMap.put("durata", durata);
                prodottoMap.put("regista", regista);
                prodottoMap.put("locandina", locandina);
                prodottoMap.put("prezzo", prezzo);
                prodottoMap.put("uploader", uploader);

                Prodotto prodotto = ProdottoFactory.getInstance().createProdotto(prodottoMap);
                ProdottoFactory.getInstance().insertProdotto(prodotto);

                request.setAttribute("outputMessage", "Prodotto inserito con successo");
                request.setAttribute("previousPage", "nuovoProdotto");
                request.getRequestDispatcher("outputPage.jsp").forward(request, response);
            } else
                response.sendRedirect("login");
        } catch (NumberFormatException | InvalidParamException | IOException e) {
            request.setAttribute("outputMessage", e.getMessage());
            request.setAttribute("previousPage", "nuovoProdotto");
            request.getRequestDispatcher("outputPage.jsp").forward(request, response);
        } catch (PSQLException e) {
            request.setAttribute("outputMessage", "Film già presente in catalogo");
            request.setAttribute("previousPage", "nuovoProdotto");
            request.getRequestDispatcher("outputPage.jsp").forward(request, response);
        } catch(SQLException e) {
            Logger.getLogger(UtenteFactory.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
