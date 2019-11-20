package ru.itis.ftracker.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.ftracker.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
