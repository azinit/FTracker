package ru.itis.ftracker.entity;

import javax.persistence.*;
import java.util.HashMap;

/**
 * Nutrition and train program for user progress
 *
 * [RU - Набор мышц]
 * (https://sportivnoepitanie.ru/biblioteka.aspx?a=idealnoe-sootnoshenie-uglevodov-zhira-dlya-nabora)
 * (https://growfood.pro/blog/bzhu/bzhu-pri-nabore-massy/)
 * ккал?
 * < / 1кг веса>
 * - Белки: 2 г
 * - Жиры: 1 г
 * - Углеводы: 4-6 г
 * [RU - Похудеть]
 * (https://letbefit.ru/blog/kak-vesti-raschet-bzhu-belkov-/)
 * - Б: 1.5 г
 * - Ж: 0.8 г
 * - У: 2 г
 *
 * Высчитываем для пользователей СТАТИЧЕСКУЮ ВЕЛИЧИНУ НУ КАЖДЫЙ ДЕНЬ В ЗАВИСИМОСТИ ОТ ПРОГРАММЫ.
 * В ЗАВИСИМОСТИ ОТ СЛОЖНОСТИ - ВЫСЧИТЫВАЕМ ДОПУСТИМУЮ ПОГРЕШНОСТЬ
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
