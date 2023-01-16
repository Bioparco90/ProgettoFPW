package it.easbronz.fakeFlix.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.postgresql.util.PSQLException;

import it.easbronz.fakeFlix.db.DatabaseManager;

public class ProdottoFactory {

    private static ProdottoFactory instance;

    private ProdottoFactory() {
    }

    public static ProdottoFactory getInstance() {
        if (instance == null) {
            instance = new ProdottoFactory();
        }
        return instance;
    }

    public List<Prodotto> getAllProdotti(String username) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet set = null;
        List<Prodotto> prodotti = new ArrayList<>();

        try {
            conn = DatabaseManager.getInstance().getDbConnection();

            String query = "SELECT * FROM prodotti WHERE username_aggiunta = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            set = stmt.executeQuery();

            while (set.next()) {
                Prodotto prodotto = new Prodotto();
                prodotto.setTitolo(set.getString("titolo"));
                prodotto.setTrama(set.getString("trama"));
                prodotto.setGenere(set.getString("genere"));
                prodotto.setDurata(set.getInt("durata"));
                prodotto.setRegista(set.getString("regista"));
                prodotto.setPathLocandina(set.getString("locandina"));
                prodotto.setPrezzo(set.getFloat("prezzo"));
                prodotto.setUsernameAggiunta(set.getString("username_aggiunta"));

                prodotti.add(prodotto);
            }
            return prodotti;

        } catch (SQLException e) {
            Logger.getLogger(UtenteFactory.class.getName())
                    .log(Level.SEVERE, null, e);
        } finally {
            try {
                set.close();
            } catch (Exception e) {
            }
            try {
                stmt.close();
            } catch (Exception e) {
            }
            try {
                conn.close();
            } catch (Exception e) {
            }
        }
        return null;
    }

    public Prodotto getProdotto(String offset) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet set = null;

        Prodotto prodotto = new Prodotto();
        try {
            conn = DatabaseManager.getInstance().getDbConnection();
            String query = "SELECT * FROM prodotti LIMIT 1 OFFSET ?";
            stmt = conn.prepareStatement(query);
            stmt.setInt(1, Integer.parseInt(offset));
            set = stmt.executeQuery();
            while (set.next()) {
                prodotto.setTitolo(set.getString("titolo"));
                prodotto.setTrama(set.getString("trama"));
                prodotto.setGenere(set.getString("genere"));
                prodotto.setDurata(set.getInt("durata"));
                prodotto.setRegista(set.getString("regista"));
                prodotto.setPathLocandina(set.getString("locandina"));
                prodotto.setPrezzo(set.getFloat("prezzo"));
                prodotto.setUsernameAggiunta(set.getString("username_aggiunta"));
            }
            return prodotto;

        } catch (SQLException e) {
            Logger.getLogger(UtenteFactory.class.getName())
                    .log(Level.SEVERE, null, e);
        } finally {
            try {
                set.close();
            } catch (Exception e) {
            }
            try {
                stmt.close();
            } catch (Exception e) {
            }
            try {
                conn.close();
            } catch (Exception e) {
            }
        }
        return null;
    }

    public Prodotto createProdotto(Map<String, Object> prodottoMap) {
        Prodotto prodotto = new Prodotto();
        prodotto.setTitolo((String) prodottoMap.get("titolo"));
        prodotto.setTrama((String) prodottoMap.get("trama"));
        prodotto.setGenere((String) prodottoMap.get("genere"));
        prodotto.setDurata((int) prodottoMap.get("durata"));
        prodotto.setRegista((String) prodottoMap.get("regista"));
        prodotto.setPathLocandina((String) prodottoMap.get("locandina"));
        prodotto.setPrezzo((float) prodottoMap.get("prezzo"));
        prodotto.setUsernameAggiunta((String) prodottoMap.get("uploader"));

        return prodotto;
    }

    public void insertProdotto(Prodotto prodotto)
            throws SQLException, PSQLException {
        Connection conn = null;
        PreparedStatement stmt = null;

        conn = DatabaseManager.getInstance().getDbConnection();
        String query = "INSERT INTO prodotti VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, prodotto.getTitolo());
        stmt.setString(2, prodotto.getTrama());
        stmt.setString(3, prodotto.getGenere());
        stmt.setInt(4, prodotto.getDurata());
        stmt.setString(5, prodotto.getRegista());
        stmt.setString(6, prodotto.getPathLocandina());
        stmt.setFloat(7, prodotto.getPrezzo());
        stmt.setString(8, prodotto.getUsernameAggiunta());
        stmt.executeUpdate();
        stmt.close();
        conn.close();
    }
}
