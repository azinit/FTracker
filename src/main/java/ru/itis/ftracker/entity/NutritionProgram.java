package ru.itis.ftracker.entity;

import javax.persistence.*;

/**
 * Nutrition and train program for user progress
 * <p>
 * [RU - Набор мышц]
 * (https://sportivnoepitanie.ru/biblioteka.aspx?a=idealnoe-sootnoshenie-uglevodov-zhira-dlya-nabora)
 * (https://growfood.pro/blog/bzhu/bzhu-pri-nabore-massy/)
 * ккал?
 * https://www.buildbody.org.ua/poleznoe/skolko-mozhno-nabrat-myshechnoj-massy-za-mesyac-trenirovok
 * * > Максимум веса может набрать за месяц: 4-5 кг. Дальше - сложнее
 * < / 1кг веса>
 * - Белки: 2 г
 * - Жиры: 1 г
 * - Углеводы: 4-6 г
 * [RU - Похудеть]
 * (https://letbefit.ru/blog/kak-vesti-raschet-bzhu-belkov-/)
 * (calorizator.ru/article/body/effective-weight-loss)
 * - Б: 1.5 г
 * - Ж: 0.8 г
 * - У: 2 г
 * <p>
 * Высчитываем для пользователей СТАТИЧЕСКУЮ ВЕЛИЧИНУ НУ КАЖДЫЙ ДЕНЬ В ЗАВИСИМОСТИ ОТ ПРОГРАММЫ.
 * В ЗАВИСИМОСТИ ОТ СЛОЖНОСТИ - ВЫСЧИТЫВАЕМ ДОПУСТИМУЮ ПОГРЕШНОСТЬ
 * [RU - Custom]
 *
 * TODO: M/Female
 */
@Entity
public class NutritionProgram {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    @Column(length=2048)
    private String description;
    //    private String examples
    private Double recommendProteins;
    private Double recommendFats;
    private Double recommendCarbohydrates;

    public NutritionProgram() {
    }

    public NutritionProgram(String name, String description, Double recommendProteins, Double recommendFats, Double recommendCarbohydrates) {
        this.name = name;
        this.description = description;
        this.recommendProteins = recommendProteins;
        this.recommendFats = recommendFats;
        this.recommendCarbohydrates = recommendCarbohydrates;
    }

    public Long getId() {
        return id;
    }

    public Double getRecommendProteins() {
        return recommendProteins;
    }

    public void setRecommendProteins(Double recommendProteins) {
        this.recommendProteins = recommendProteins;
    }

    public Double getRecommendFats() {
        return recommendFats;
    }

    public void setRecommendFats(Double recommendFats) {
        this.recommendFats = recommendFats;
    }

    public Double getRecommendCarbohydrates() {
        return recommendCarbohydrates;
    }

    public void setRecommendCarbohydrates(Double recommendCarbohydrates) {
        this.recommendCarbohydrates = recommendCarbohydrates;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
