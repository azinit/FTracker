package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Record;

public interface RecordRepository extends CrudRepository<Record, Long> {
}
