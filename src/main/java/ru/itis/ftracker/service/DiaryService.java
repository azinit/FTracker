package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.repository.RecordRepository;

import java.util.HashMap;
import java.util.List;

@Service
public class DiaryService {
    @Autowired
    private RecordRepository recordRepository;

    public boolean add(Record record) {
        return false;
    }

    public boolean edit(Record record) {
        return false;
    }

    public boolean delete(Record record) {
        return false;
    }

    public String getMyMotivationComment() {
        return null;
    }

    // TODO: Refactor: reversed as arg
    public Iterable<Record> findAll() {
        return recordRepository.findAll();
    }

    public Iterable<Record> findAllReversed(User user) {
        return recordRepository.findAllByUserOrderByIdDesc(user);
    }

    public Record getCurrentState(User user) {
        List<Record> records = getRecords(user);
        if (records.isEmpty()) {
            return null;
        }
        return records.get(records.size() - 1);
    }

    public List<Record> getRecords(User user) {
        return recordRepository.findAllByUser(user);
    };
}
