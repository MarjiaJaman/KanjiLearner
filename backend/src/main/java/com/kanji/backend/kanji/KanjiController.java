package com.kanji.backend.kanji;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

@RestController
@RequestMapping("/api/kanji")
public class KanjiController {

    private final KanjiRepository kanjiRepository;
    private final KanjiMeaningRepository kanjiMeaningRepository;
    private final KanjiReadingRepository kanjiReadingRepository;

    public KanjiController(KanjiRepository kanjiRepository, KanjiMeaningRepository kanjiMeaningRepository,
            KanjiReadingRepository kanjiReadingRepository) {
        this.kanjiRepository = kanjiRepository;
        this.kanjiMeaningRepository = kanjiMeaningRepository;
        this.kanjiReadingRepository = kanjiReadingRepository;
    }

    @GetMapping
    public List<Kanji> list() {
        return kanjiRepository.findAllByOrderByDisplayOrderAsc();
    }

    @GetMapping("/{id}")
    public KanjiDetail detail(@PathVariable Long id) {
        Kanji kanji = kanjiRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Kanji not found"));
        return KanjiDetail.of(kanji, kanjiMeaningRepository.findByKanjiIdOrderBySortOrderAsc(id),
                kanjiReadingRepository.findByKanjiIdOrderBySortOrderAsc(id),
                kanjiRepository.findFirstByDisplayOrderLessThanOrderByDisplayOrderDesc(kanji.getDisplayOrder()).orElse(null),
                kanjiRepository.findFirstByDisplayOrderGreaterThanOrderByDisplayOrderAsc(kanji.getDisplayOrder()).orElse(null));
    }
}
