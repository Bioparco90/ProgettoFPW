/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package it.easbronz.fakeFlix.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.easbronz.fakeFlix.model.Prodotto;
import it.easbronz.fakeFlix.model.ProdottoFactory;
import it.easbronz.fakeFlix.model.Utente;
import it.easbronz.fakeFlix.model.UtenteFactory;

@WebServlet(name = "AreaPersonale", urlPatterns = { "/areaPersonale" })
public class AreaPersonale extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            String loggedUser = (String) session.getAttribute("user");
            List<Prodotto> prodotti = ProdottoFactory.getInstance().getAllProdotti(loggedUser);
            Utente utente = UtenteFactory.getInstance().getUtenteByUsername(loggedUser);
            request.setAttribute("listaProdottiAggiunti", prodotti);
            request.setAttribute("utente", utente);
            request.getRequestDispatcher("areaPersonale.jsp").forward(request, response);
        } else
            response.sendRedirect("login");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
