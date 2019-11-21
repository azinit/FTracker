package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Comment;

public interface CommentRepository extends CrudRepository<Comment, Long> {
}
