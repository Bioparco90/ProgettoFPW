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
    public int getIdUtente(){
        return this.idUtente;
    }
    public String getUsername(){
        return this.username;
    }
    
    public String getNome(){
        return this.nome;
    }
    
    public String getCognome(){
        return this.cognome;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public String getPassword(){
        return this.password;
    }
    
    public int getDataNascita(){
        return this.dataNascita;
    }
    
    /*----------------------------------------------------------*/
    
    /*Metodi setter*/
    public void setIdUtente(int idUtente){
        this.idUtente=idUtente;
    }
    public void setUsername(String username){
        this.username=username;
    }
    
    public void setNome(String nome){
        
        this.nome=nome;
    }
    
    public void setCognome(String cognome){
       this.cognome=cognome;
    }
    
    public void setEmail(String email){
         this.email=email;
    }
    
    public void setPassword(String password){
        this.password=password;
    }
    
    public void setDataNascita(int dataNascita){
        this.dataNascita=dataNascita;
    }
    
    
    /*Override metodo equals della classe object*/
    @Override
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
    
    /*Credo che questa roba sia giusta ma non ne sono certo
    bisogna controllare*/
    @Override
    public int hashCode(){
        return getIdUtente()+ 100;
    }
}

