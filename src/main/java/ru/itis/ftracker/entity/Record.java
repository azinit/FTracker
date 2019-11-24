package ru.itis.ftracker.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Record in Diary for fixate user state on NP
 */
@Entity
public class Record {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    // Ration p/f/c (gramm) for weight (kg)
    private Double weight;
    private Double proteins;
    private Double fats;
    private Double carbohydrates;

    private int day;            // User@Entity
    private Date date;          // auto

    // TODO:
    private String photo;       // optional
    private String comment;     // optional
    @Enumerated(EnumType.STRING)
    private Mood mood;          // optional

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;


    public Record() {
    }

    public Record(Double weight, Double proteins, Double fats, Double carbohydrates, int day, Date date, String photo, String comment, Mood mood, User user) {
        this.weight = weight;
        this.proteins = proteins;
        this.fats = fats;
        this.carbohydrates = carbohydrates;
        this.day = day;
        this.date = new Date();
        this.photo = photo;
        this.comment = comment;
        this.mood = mood;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Mood getMood() {
        return mood;
    }

    public void setMood(Mood mood) {
        this.mood = mood;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return String.format("Record[a:%s | d:%s | Comment:'%s'", user, day, comment);
    }

    public Double getProteins() {
        return proteins;
    }

    public void setProteins(Double proteins) {
        this.proteins = proteins;
    }

    public Double getFats() {
        return fats;
    }

    public void setFats(Double fats) {
        this.fats = fats;
    }

    public Double getCarbohydrates() {
        return carbohydrates;
    }

    public void setCarbohydrates(Double carbohydrates) {
        this.carbohydrates = carbohydrates;
    }
}