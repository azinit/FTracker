package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.ftracker.entity.MotivationalQuote;
import ru.itis.ftracker.repository.CelebrityRepository;
import ru.itis.ftracker.repository.MotivationalQuoteRepository;

@Service
public class MotivationService {
    @Autowired
    private CelebrityRepository celebrityRepository;

    @Autowired
    private MotivationalQuoteRepository motivationalQuoteRepository;

    public MotivationalQuote getRandom() {
        return null;
    }
}
