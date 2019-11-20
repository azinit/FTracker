package ru.itis.ftracker.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Abstract comment for quote, advice, ...
 */
@Entity
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Date date;
    private String text;
//    private Advice advice;
//    private User user;


    public Comment() {
    }

    public Comment(Date date, String text) {
        this.date = date;
        this.text = text;
    }

    public Long getId() {
        return id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}