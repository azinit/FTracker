package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.repository.RecordRepository;

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
}
