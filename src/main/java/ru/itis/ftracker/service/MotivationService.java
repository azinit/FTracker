package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.ftracker.entity.MotivationalQuote;
import ru.itis.ftracker.repository.CelebrityRepository;
import ru.itis.ftracker.repository.MotivationalQuoteRepository;

import java.util.List;
import java.util.Random;

@Service
public class MotivationService {
    @Autowired
    private CelebrityRepository celebrityRepository;

    @Autowired
    private MotivationalQuoteRepository motivationalQuoteRepository;

    public List<MotivationalQuote> findAll() {
        return motivationalQuoteRepository.findAllByOrderById();
    }

    public MotivationalQuote getRandom() {
        Random rand = new Random();
        List<MotivationalQuote> quotes = findAll();
        MotivationalQuote randomQuote = quotes.get(rand.nextInt(quotes.size()));
        return randomQuote;
    }
}
