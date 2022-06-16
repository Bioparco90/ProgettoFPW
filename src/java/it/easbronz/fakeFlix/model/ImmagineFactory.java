// package it.easbronz.fakeFlix.model;

// import java.sql.Connection;
// import java.sql.PreparedStatement;
// import java.sql.ResultSet;

// import it.easbronz.fakeFlix.db.DatabaseManager;

// public class ImmagineFactory {
//     private static ImmagineFactory instance;

//     private ImmagineFactory() {
//     }

//     public static ImmagineFactory getInstance() {
//         if (instance == null)
//             instance = new ImmagineFactory();
//         return instance;
//     }

//     public boolean addImmagine(Immagine image, String entity) {
//         Connection conn = null;
//         PreparedStatement stmt = null;
//         ResultSet set = null;

//         try {
//             conn = DatabaseManager.getInstance().getDbConnection();
//             String table = (entity.equals("users")) ? "utente" : "prodotto";
//             String query = "INSERT INTO" + table + "VALUES (";
//         }
        
//     }
// }
