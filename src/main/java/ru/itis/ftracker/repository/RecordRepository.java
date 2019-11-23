package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Record;

import java.util.List;

public interface RecordRepository extends CrudRepository<Record, Long> {
    List<Record> findAllByOrderByIdDesc();
}
