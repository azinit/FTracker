package ru.itis.ftracker.entity;

import javax.persistence.*;
import java.util.HashMap;

/**
 * Nutrition and train program for user progress
 */
@Entity
public class NutritionProgram {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private HashMap<String, Object> props;

    public NutritionProgram() {
    }

    public NutritionProgram(HashMap<String, Object> props) {
        this.props = props;
    }

    public Long getId() {
        return id;
    }

    public HashMap<String, Object> getProps() {
        return props;
    }

    public void setProps(HashMap<String, Object> props) {
        this.props = props;
    }
}
