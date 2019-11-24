package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.itis.ftracker.entity.NutritionProgram;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.repository.RecordRepository;
import ru.itis.ftracker.repository.UserRepository;

import java.util.HashMap;
import java.util.List;

@Service
public class DiaryService {
    @Autowired
    private ProgressService progressService;

    @Autowired
    private RecordRepository recordRepository;

    public boolean add(Record curState) {
        List<Record> userRecords = getRecords(curState.getUser());
        boolean isFirstRecord = userRecords.isEmpty();
        if (!isFirstRecord) {
            Record prevState = getCurrentState(curState.getUser());
            progressService.extend(curState, prevState);
        }
        recordRepository.save(curState);
        return true;
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

    public List<Record> findAllReversed(User user) {
        return recordRepository.findAllByUserOrderByDayDesc(user);
    }

    public Record getCurrentState(User user) {
        List<Record> records = getRecords(user);
        if (records.isEmpty()) {
            return null;
        }
        return records.get(records.size() - 1);
    }

    public List<Record> getRecords(User user) {
        return recordRepository.findAllByUserOrderByDayAsc(user);
    }
//    @RequestMapping(value = "/api/diary/records", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    /*public List<Record> getRecords() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByUsername((String) auth.getPrincipal());
        return getRecords(user);
    }*/

    public int getProgramDay(User user) {
        // TODO: Implement (curDate - startDate)
        return user.getProgramDay();
    }
}
