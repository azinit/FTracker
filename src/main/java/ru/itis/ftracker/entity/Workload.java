package ru.itis.ftracker.entity;

/**
 * Factor влияет на общую совместимость с курсом
 * Для LOW - позволительно выполнять план на 50 процентов
 * Для MEDIUM - желательно на 75
 * Для HARD же - на все 0.96 (все мы люди)
 */
public enum Workload {
    LOW(0.5),
    MEDIUM(0.25),
    HARD(0.15);

    private Double factor;

    Workload(Double factor) {
        this.factor = factor;
    }

    public Double getFactor() {
        return factor;
    }
}
