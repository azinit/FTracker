package ru.itis.ftracker.entity;

import javax.persistence.*;

/**
 * Advices for user progress by NP
 */
@Entity
public class Advice {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "program_id")
    private NutritionProgram program;
    private String[] tags;
    private String text;
    private String image;

    public Advice() {
    }

    public Advice(NutritionProgram program, String[] tags, String text, String image) {
        this.program = program;
        this.tags = tags;
        this.text = text;
        this.image = image;
    }

    public Long getId() {
        return id;
    }

    public String[] getTags() {
        return tags;
    }

    public void setTags(String[] tags) {
        this.tags = tags;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public NutritionProgram getProgram() {
        return program;
    }

    public void setProgram(NutritionProgram program) {
        this.program = program;
    }
}