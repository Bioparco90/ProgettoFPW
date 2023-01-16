package it.easbronz.fakeFlix.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.postgresql.util.PSQLException;

import it.easbronz.fakeFlix.db.DatabaseManager;

public class UtenteFactory {

    private static UtenteFactory instance;

    private UtenteFactory() {
    }

    public static UtenteFactory getInstance() {
        if (instance == null) {
            instance = new UtenteFactory();
        }
        return instance;
    }

    public Utente getUtenteByUsernamePassword(String username, String password) {
        Connection conn = null;
        PreparedStatement stmnt = null;
        ResultSet set = null;

        try {
            conn = DatabaseManager.getInstance().getDbConnection();

            String query = "SELECT * FROM utenti WHERE username = ? AND password = ?";
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
                utente.setFoto(set.getString("foto"));
                return utente;
            } else {
                return null;
            }

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

    public Utente getUtenteByUsername(String username) {
        Connection conn = null;
        PreparedStatement stmnt = null;
        ResultSet set = null;

        try {
            conn = DatabaseManager.getInstance().getDbConnection();

            String query = "SELECT * FROM utenti WHERE username = ?";
            stmnt = conn.prepareStatement(query);
            stmnt.setString(1, username);
            set = stmnt.executeQuery();

            if (set.next()) {
                Utente utente = new Utente();
                utente.setUsername(set.getString("username"));
                utente.setNome(set.getString("nome"));
                utente.setCognome(set.getString("cognome"));
                utente.setEmail(set.getString("email"));
                utente.setPassword(set.getString("password"));
                utente.setCitta(set.getString("citta"));
                utente.setFoto(set.getString("foto"));
                return utente;
            } else {
                return null;
            }

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

    public Utente createUtente(Map<String, String> utenteMap) {
        Utente utente = new Utente();

        utente.setUsername(utenteMap.get("username"));
        utente.setNome(utenteMap.get("nome"));
        utente.setCognome(utenteMap.get("cognome"));
        utente.setEmail(utenteMap.get("email"));
        utente.setPassword(utenteMap.get("password"));
        utente.setCitta(utenteMap.get("citta"));
        utente.setFoto(utenteMap.get("foto"));
        return utente;
    }

    public void insertUtente(Utente utente)
            throws SQLException, PSQLException {
        Connection conn = null;
        PreparedStatement stmt = null;

        conn = DatabaseManager.getInstance().getDbConnection();
        String query = "INSERT INTO utenti VALUES (?, ?, ?, ?, ?, ?, ?)";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, utente.getUsername());
        stmt.setString(2, utente.getPassword());
        stmt.setString(3, utente.getNome());
        stmt.setString(4, utente.getCognome());
        stmt.setString(5, utente.getEmail());
        stmt.setString(6, utente.getCitta());
        stmt.setString(7, utente.getFoto());
        stmt.executeUpdate();
        stmt.close();
        conn.close();
    }
}
