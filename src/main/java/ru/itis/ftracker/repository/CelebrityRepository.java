package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Celebrity;

public interface CelebrityRepository extends CrudRepository<Celebrity, Long> {
}
