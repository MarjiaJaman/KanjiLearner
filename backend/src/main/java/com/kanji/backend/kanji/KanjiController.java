package com.kanji.backend.kanji;

import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.kanji.backend.stroke.Stroke;
import com.kanji.backend.stroke.StrokeRepository;

@RestController
@RequestMapping("/api/kanji")
public class KanjiController {

    private final KanjiRepository kanjiRepository;
    private final KanjiMeaningRepository kanjiMeaningRepository;
    private final KanjiReadingRepository kanjiReadingRepository;
    private final StrokeRepository strokeRepository;

    public KanjiController(KanjiRepository kanjiRepository, KanjiMeaningRepository kanjiMeaningRepository,
            KanjiReadingRepository kanjiReadingRepository, StrokeRepository strokeRepository) {
        this.kanjiRepository = kanjiRepository;
        this.kanjiMeaningRepository = kanjiMeaningRepository;
        this.kanjiReadingRepository = kanjiReadingRepository;
        this.strokeRepository = strokeRepository;
    }

    // GET /api/kanji?page=2&size=18 → one page of kanji in display order.
    // characters=日月 limits the list to those kanji (used by search).
    @GetMapping
    public KanjiPage list(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "18") int size,
            @RequestParam(required = false) String characters) {
        int pageSize = Math.clamp(size, 1, 100);
        Set<String> wanted = characters == null ? null
                : characters.codePoints().mapToObj(Character::toString).collect(Collectors.toSet());
        Page<Kanji> result = findPage(wanted, Math.max(1, page), pageSize);
        // A page past the end (say, after kanji were removed) falls back to the last page.
        if (result.isEmpty() && result.getTotalPages() > 0) {
            result = findPage(wanted, result.getTotalPages(), pageSize);
        }
        return KanjiPage.of(result);
    }

    private Page<Kanji> findPage(Set<String> characters, int page, int size) {
        PageRequest request = PageRequest.of(page - 1, size, Sort.by("displayOrder"));
        if (characters == null) {
            return kanjiRepository.findAll(request);
        }
        if (characters.isEmpty()) {
            return Page.empty(request);
        }
        return kanjiRepository.findByKanjiCharacterIn(characters, request);
    }

    @GetMapping("/{id}")
    public KanjiDetail detail(@PathVariable Long id) {
        Kanji kanji = kanjiRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Kanji not found"));
        return KanjiDetail.of(kanji, kanjiMeaningRepository.findByKanjiIdOrderBySortOrderAsc(id),
                kanjiReadingRepository.findByKanjiIdOrderBySortOrderAsc(id),
                strokeRepository.findByGlyphOrderByStrokeOrderAsc(kanji.getKanjiCharacter()).stream().map(Stroke::getPath).toList(),
                kanjiRepository.findFirstByDisplayOrderLessThanOrderByDisplayOrderDesc(kanji.getDisplayOrder()).orElse(null),
                kanjiRepository.findFirstByDisplayOrderGreaterThanOrderByDisplayOrderAsc(kanji.getDisplayOrder()).orElse(null));
    }
}
