package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Message;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {
    List<Message> findAllByOrderByIdDesc();
}
