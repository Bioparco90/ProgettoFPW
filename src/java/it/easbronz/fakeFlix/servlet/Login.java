package it.easbronz.fakeFlix.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.easbronz.fakeFlix.exceptions.InvalidParamException;
import it.easbronz.fakeFlix.model.Utente;
import it.easbronz.fakeFlix.model.UtenteFactory;
import it.easbronz.fakeFlix.utils.Utils;

@WebServlet(name = "Login", urlPatterns = { "/login" })
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String user = request.getParameter("user");
        String password = request.getParameter("psw");

        try {

            final int USER_MIN_LENGTH = 3;
            final int USER_MAX_LENGTH = 20;
            final int PASSWORD_MIN_LENGTH = 5;
            final int PASSWORD_MAX_LENGTH = 50;

            Utils.checkString("User", user, USER_MIN_LENGTH, USER_MAX_LENGTH);
            Utils.checkString("Password", password, PASSWORD_MIN_LENGTH, PASSWORD_MAX_LENGTH);

            Utente utente = UtenteFactory.getInstance().getUtenteByUsernamePassword(user, password);

            if (utente != null) {
                session.setAttribute("user", utente.getUsername());
                session.setMaxInactiveInterval(900);
                response.sendRedirect("areaPersonale");
            } else
                throw new InvalidParamException("Username o Password errati");

        } catch (InvalidParamException e) {
            session.invalidate();
            request.setAttribute("outputMessage", e.getMessage());
            request.setAttribute("previousPage", "login");
            request.getRequestDispatcher("outputPage.jsp").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
