package it.easbronz.fakeFlix.model;

import it.easbronz.fakeFlix.db.DatabaseManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProdottoFactory {
    private static ProdottoFactory instance;

    private ProdottoFactory() {
    }

    public static ProdottoFactory getInstance() {
        if (instance == null)
            instance = new ProdottoFactory();
        return instance;
    }

    public List<Prodotto> getAllProdotti() {
        Connection conn = null;
        PreparedStatement stmnt = null;
        ResultSet set = null;
        List<Prodotto> prodotti = new ArrayList<>();

        try {
            conn = DatabaseManager.getInstance().getDbConnection();

            String query = "SELECT * FROM prodotto";
            stmnt = conn.prepareStatement(query);
            set = stmnt.executeQuery();

            while (set.next()) {
                Prodotto prodotto = new Prodotto();
                prodotto.setTitolo(set.getString("titolo"));
                prodotto.setTrama(set.getString("trama"));
                prodotto.setGenere(set.getString("genere"));
                prodotto.setDurata(set.getInt("durata"));
                prodotto.setRegista(set.getString("regista"));
                prodotto.setPathLocandina(set.getString("locandina"));
                prodotto.setPrezzo(set.getFloat("prezzo"));

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
