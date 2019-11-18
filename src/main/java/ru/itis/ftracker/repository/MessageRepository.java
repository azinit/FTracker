package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Message;

public interface MessageRepository extends CrudRepository<Message, Long> {
}
