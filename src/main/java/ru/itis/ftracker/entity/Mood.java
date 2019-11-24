package ru.itis.ftracker.entity;

/**
 * User mood for Record
 * TODO (add property?)
 */
public enum Mood {
    ANGRY("Злость"),
    SAD("Грусть"),
    TIRED("Усталость"),
    OK("ОК"),
    SATISFIED("Удовлетворееность"),
    PRODUCTIVE("Продуктивность");

    private String label;

    Mood(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}
