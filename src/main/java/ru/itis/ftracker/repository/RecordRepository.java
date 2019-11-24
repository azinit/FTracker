package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.entity.User;

import java.util.List;

public interface RecordRepository extends CrudRepository<Record, Long> {
    List<Record> findAllByOrderByIdDesc();

    List<Record> findAllByUserOrderByDayAsc(User user);

    List<Record> findAllByUserOrderByDayDesc(User user);

//    @Query(value="select p from #{#entityName} p where p.id=:projectId and p.projectName=:projectName")
}
