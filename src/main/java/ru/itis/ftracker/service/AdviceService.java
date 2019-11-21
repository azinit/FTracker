package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.ftracker.entity.Advice;
import ru.itis.ftracker.repository.AdviceRepository;

@Service
public class AdviceService {
    @Autowired
    private AdviceRepository adviceRepository;

    public Advice getRandom() {
        return null;
    }

    public Object findAll() {
        return adviceRepository.findAll();
    }
    // view, load, filter, tag, ...
}
