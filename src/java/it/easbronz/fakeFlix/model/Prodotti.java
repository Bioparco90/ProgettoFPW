
package it.easbronz.fakeFlix.model;

public class Prodotti {
    private int idProdotto;
    private String genere;
    private int durata;
    private String regista;
    private String tipo; /*Definiamo se è un film o una serie tv*/
    private String locandina; /*Ci mettiamo il path della locandina */
    private int utente_id;
    
    /*Metodi getter*/
    public int getIdProdotto(){
        return this.idProdotto;
    }
    
    public String getGenere(){
        return this.genere;
    }
    
    public int getDurata(){
        return this.durata;
    }
    
    public String getRegista(){
        return this.regista;
    }
    
    public String getTipo(){
        return this.tipo;
    }
    
    public String getLocandina(){
        return this.locandina;
    }
    
    public int utente_id(){
        return this.utente_id;
    }
    
    /*----------------------------------------*/
    
    /*Metodi setter*/
    public void setIdProdotto(int idProdotto){
        this.idProdotto=idProdotto;
    }
    
    public void setGenere(String genere){
        this.genere=genere;
    }
    
    public void setDurata(int durata){
        this.durata=durata;
    }
    
    public void setRegista(String regista){
        this.regista=regista;
    }
    
    public void setTipo(String tipo){
        this.tipo=tipo;
    }
    
    public void setLocandina(String locandina){
        this.locandina=locandina;
    }
    
    public void setUtente_id(int utente_id){
        this.utente_id=utente_id;
    }
    
    /*Equals e hascode*/
    
     @Override
    public boolean equals(Object o){
        /*Se stiamo passando l'oggetto stesso allora returno true*/
        if (o==this)
            return true;
        
        /*Se passo un oggetto di un'altra classe returno false*/
        if(!(o instanceof Prodotti))
            return false;
        
        Prodotti x= (Prodotti)o;
        
        /*Se l'id del prodotto passato come parametro è uguale a quello 
        dell'oggetto da cui richiamo il metodo returno true*/
        if(this.idProdotto==x.idProdotto){
            return true;
        }
        else return false;
    }
    
    /*Credo che questa roba sia giusta ma non ne sono certo
    bisogna controllare*/
    @Override
    public int hashCode(){
        return getIdProdotto()+100;
    }
}
