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
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "advice_id")
    private Advice advice;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;


    public Comment() {
    }

    public Comment(Date date, String text, Advice advice, User user) {
        this.date = date;
        this.text = text;
        this.advice = advice;
        this.user = user;
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

    public Advice getAdvice() {
        return advice;
    }

    public void setAdvice(Advice advice) {
        this.advice = advice;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}