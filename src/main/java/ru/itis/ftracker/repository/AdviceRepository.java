package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Advice;

public interface AdviceRepository extends CrudRepository<Advice, Long> {
}
