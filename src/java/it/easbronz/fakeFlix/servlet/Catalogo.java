package it.easbronz.fakeFlix.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.easbronz.fakeFlix.model.Prodotto;
import it.easbronz.fakeFlix.model.ProdottoFactory;

@WebServlet(name = "Catalogo", urlPatterns = { "/catalogo" })
public class Catalogo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {

            String command = request.getParameter("offsetId");
            if (command != null) {
                Prodotto prodotto = ProdottoFactory.getInstance().getProdotto(command);
                request.setAttribute("prodotto", prodotto);
                response.setContentType("application/json");
                response.setHeader("Expires", "Sat, 6 May 1995 12:00 GMT");
                response.setHeader("Cache-control", "no-store, no-cache, must-revalidate");
                request.getRequestDispatcher("prodottoJSON.jsp").forward(request, response);
            } else {
                Prodotto prodotto = ProdottoFactory.getInstance().getProdotto("0");
                request.setAttribute("prodotto", prodotto);
                request.getRequestDispatcher("catalogo.jsp").forward(request, response);
            }
        } else
            response.sendRedirect("login");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
