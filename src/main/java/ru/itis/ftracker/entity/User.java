package ru.itis.ftracker.entity;

import javax.persistence.*;
import java.util.Set;

/**
 * User. Simply - User =)
 */
@Entity
@Table(name = "usr")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    // personal data
    private String firstName;
    private String lastName;

    // auth data
    private String username;
    private String password;
    private String email;       // optional
    private boolean active;

    /**
     * By order:
     * ElementCollection:  generate table for Role@Enum
     * CollectionTable:    store role in separate table, will join with current table by "user_id"
     * Enumerated:         is enum, how store
     */
    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> roles;

    // TODO:
//    private NutritionProgram programActive;
    private int programDay;

    public Long getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public int getProgramDay() {
        return programDay;
    }

    public void setProgramDay(int programDay) {
        this.programDay = programDay;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
}