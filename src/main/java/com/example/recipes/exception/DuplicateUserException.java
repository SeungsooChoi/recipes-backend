package com.example.recipes.exception;

public class DuplicateUserException extends Throwable{
    public DuplicateUserException(String msg) {
        super(msg);
    }
}
