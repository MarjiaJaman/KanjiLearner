package com.kanji.backend.kana;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/kana")
public class KanaController {

    private final KanaRepository kanaRepository;

    public KanaController(KanaRepository kanaRepository) {
        this.kanaRepository = kanaRepository;
    }

    @GetMapping
    public List<Kana> list() {
        return kanaRepository.findAllByOrderByIdAsc();
    }
}
