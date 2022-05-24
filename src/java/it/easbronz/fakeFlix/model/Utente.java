package it.easbronz.fakeFlix.model;
import java.util.Objects;

public class Utente{
    private int idUtente;
    private String username;
    private String nome;
    private String cognome;
    private String email;
    private String password;
    private int dataNascita; //BISOGNA CAPIRE DI CHE TIPO FARE QUESTO ATTRIBUTO
    
    /*Metodi getter*/
    private int getIdUtente(){
        return this.idUtente;
    }
    private String getUsername(){
        return this.username;
    }
    
    private String getNome(){
        return this.nome;
    }
    
    private String getCognome(){
        return this.cognome;
    }
    
    private String getEmail(){
        return this.email;
    }
    
    private String getPassword(){
        return this.password;
    }
    
    private int getDataNascita(){
        return this.dataNascita;
    }
    
    /*----------------------------------------------------------*/
    
    /*Metodi setter*/
    private void setIdUtente(int idUtente){
        this.idUtente=idUtente;
    }
    private void setUsername(String username){
        this.username=username;
    }
    
    private void setNome(String nome){
        
        this.nome=nome;
    }
    
    private void setCognome(String cognome){
       this.cognome=cognome;
    }
    
    private void setEmail(String email){
         this.email=email;
    }
    
    private void setPassword(String password){
        this.password=password;
    }
    
    private void setDataNascita(int dataNascita){
        this.dataNascita=dataNascita;
    }
    
    
    /*Override metodo equals della classe object*/
    public boolean equals(Object o){
        /*Se stiamo passando l'oggetto stesso allora returno true*/
        if (o==this)
            return true;
        
        /*Se passo un oggetto di un'altra classe returno false*/
        if(!(o instanceof Utente))
            return false;
        
        Utente x= (Utente)o;
        
        /*Se l'id dell'utente passato come parametro è uguale a quello 
        dell'oggetto da cui richiamo il metodo returno true*/
        if(this.idUtente==x.idUtente){
            return true;
        }
        else return false;
    }
    
    /*Mancano metodi  hashCode che non so cosa siano*/
}

