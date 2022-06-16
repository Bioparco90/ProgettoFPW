package it.easbronz.fakeFlix.model;

public class Immagine {
    private String percorso;

    public Immagine() {
    }

    public Immagine(String percorso) {
        this.percorso = percorso;
    }

    public String getPercorso() {
        return percorso;
    }

    public void setPercorso(String percorso) {
        this.percorso = percorso;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((percorso == null) ? 0 : percorso.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Immagine other = (Immagine) obj;
        if (percorso == null) {
            if (other.percorso != null)
                return false;
        } else if (!percorso.equals(other.percorso))
            return false;
        return true;
    }
}
