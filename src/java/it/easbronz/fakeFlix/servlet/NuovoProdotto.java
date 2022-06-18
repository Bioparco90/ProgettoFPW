package it.easbronz.fakeFlix.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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

import it.easbronz.fakeFlix.db.DatabaseManager;
import it.easbronz.fakeFlix.exceptions.InvalidParamException;
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

        Connection conn = null;
        PreparedStatement stmt = null;
        HttpSession session = request.getSession(false);

        try {
            String titolo = request.getParameter("titolo");
            String trama = request.getParameter("trama");
            String genere = request.getParameter("genere");
            int durata = Integer.valueOf(request.getParameter("durata"));
            String regista = request.getParameter("regista");
            float prezzo = Float.valueOf(request.getParameter("prezzo"));
            String uploader = (String) session.getAttribute("user");

            Part file = request.getPart("locandina");
            String locandina = Utils.getPathImg(file, "products");

            Utils.checkString("Titolo", titolo, 1, 50);
            Utils.checkString("Trama", trama, 1, 200);
            Utils.checkString("Genere", genere, 1, 20);
            Utils.checkInteger("Durata", durata, 1, 500);
            Utils.checkString("Regista", regista, 1, 50);
            Utils.checkFloat("Prezzo", prezzo);
            Utils.checkString("Uploader", uploader, 3, 20);
            Utils.checkString("Locandina", locandina, 1, 200);

            conn = DatabaseManager.getInstance().getDbConnection();
            String query = "INSERT INTO prodotto VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, titolo);
            stmt.setString(2, trama);
            stmt.setString(3, genere);
            stmt.setInt(4, durata);
            stmt.setString(5, regista);
            stmt.setString(6, locandina);
            stmt.setFloat(7, prezzo);
            stmt.setString(8, uploader);
            stmt.executeUpdate();

            response.sendRedirect("catalogo");
        } catch (IllegalStateException e) {
            response.sendRedirect("login");
        } catch (InvalidParamException e) {
            response.sendRedirect("login");
        } catch (SQLException e) {
            Logger.getLogger(UtenteFactory.class.getName()).log(Level.SEVERE, null, e);
        } catch (IOException e) {
            response.sendRedirect("login");
        } finally {
            try {
                stmt.close();
            } catch (Exception e) {
            }
            try {
                conn.close();
            } catch (Exception e) {
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
