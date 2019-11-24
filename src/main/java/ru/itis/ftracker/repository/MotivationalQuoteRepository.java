package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.MotivationalQuote;

import java.util.List;

public interface MotivationalQuoteRepository extends CrudRepository<MotivationalQuote, Long> {
    List<MotivationalQuote> findAllByOrderById();
}
