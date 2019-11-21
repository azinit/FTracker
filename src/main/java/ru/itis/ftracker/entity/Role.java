package ru.itis.ftracker.entity;

import org.springframework.security.core.GrantedAuthority;

/**
 * User roles
 */
public enum Role implements GrantedAuthority {
    USER, ADMIN;

    @Override
    public String getAuthority() {
        return name();
    }
}
