package com.kanji.backend.kanji;

import java.util.List;

import org.springframework.data.domain.Page;

// One page of the kanji list. page is 1-based.
public record KanjiPage(List<Kanji> items, int page, int size, long totalItems, int totalPages) {

    static KanjiPage of(Page<Kanji> result) {
        return new KanjiPage(result.getContent(), result.getNumber() + 1, result.getSize(),
                result.getTotalElements(), result.getTotalPages());
    }
}
