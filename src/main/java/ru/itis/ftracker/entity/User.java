package ru.itis.ftracker.entity;

import javax.persistence.*;

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
    private String login;
    private String password;
    private String email;       // optional

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

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
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

    public int getProgramDay() {
        return programDay;
    }

    public void setProgramDay(int programDay) {
        this.programDay = programDay;
    }
}