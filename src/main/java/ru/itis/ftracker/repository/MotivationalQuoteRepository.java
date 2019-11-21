package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.MotivationalQuote;

public interface MotivationalQuoteRepository extends CrudRepository<MotivationalQuote, Long> {
}
