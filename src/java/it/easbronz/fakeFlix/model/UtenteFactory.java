package it.easbronz.fakeFlix.model;

import it.easbronz.fakeFlix.db.DatabaseManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UtenteFactory {
    private static UtenteFactory instance;

    private UtenteFactory() {
    }

    public static UtenteFactory getInstance() {
        if (instance == null)
            instance = new UtenteFactory();
        return instance;
    }

    public Utente getUtenteByUsernamePassword(String username, String password) {
        Connection conn = null;
        PreparedStatement stmnt = null;
        ResultSet set = null;

        try {
            conn = DatabaseManager.getInstance().getDbConnection();

            String query = "SELECT * FROM utente WHERE username = ? AND password = ?";
            stmnt = conn.prepareStatement(query);
            stmnt.setString(1, username);
            stmnt.setString(2, password);

            set = stmnt.executeQuery();

            if (set.next()) {
                Utente utente = new Utente();
                utente.setUsername(set.getString("username"));
                utente.setNome(set.getString("nome"));
                utente.setCognome(set.getString("cognome"));
                utente.setEmail(set.getString("email"));
                utente.setPassword(set.getString("password"));
                utente.setCitta(set.getString("citta"));
                return utente;
            } else
                return null;

        } catch (SQLException e) {
            Logger.getLogger(UtenteFactory.class.getName())
                    .log(Level.SEVERE, null, e);
        } finally {
            try {
                set.close();
            } catch (Exception e) {
            }
            try {
                stmnt.close();
            } catch (Exception e) {
            }
            try {
                conn.close();
            } catch (Exception e) {
            }
        }
        return null;
    }
}
