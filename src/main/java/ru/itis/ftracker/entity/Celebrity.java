package ru.itis.ftracker.entity;

import javax.persistence.*;

/**
 * Famous person for motivational quote
 */
@Entity
public class Celebrity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String firstName;
    private String lastName;
    // TODO:
    private String photo;

    public Celebrity() {
    }

    public Celebrity(String firstName, String lastName, String photo) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.photo = photo;
    }

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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}