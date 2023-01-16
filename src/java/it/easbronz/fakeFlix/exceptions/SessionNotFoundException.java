package it.easbronz.fakeFlix.exceptions;

public class SessionNotFoundException extends Exception {

    public SessionNotFoundException(String errorMessage) {
        super(errorMessage);
    }
}
