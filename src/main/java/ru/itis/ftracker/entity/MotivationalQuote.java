package ru.itis.ftracker.entity;

import javax.persistence.*;

/**
 * Motivational quote for motivate user =)
 */
@Entity
public class MotivationalQuote {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String text;

//    private Celebrity author;

    public MotivationalQuote() {
    }

    public MotivationalQuote(String text) {
        this.text = text;
    }

    public Long getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}