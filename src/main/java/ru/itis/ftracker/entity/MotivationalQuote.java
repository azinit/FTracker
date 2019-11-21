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

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "author_id")
    private Celebrity author;

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

    public Celebrity getAuthor() {
        return author;
    }

    public void setAuthor(Celebrity author) {
        this.author = author;
    }
}