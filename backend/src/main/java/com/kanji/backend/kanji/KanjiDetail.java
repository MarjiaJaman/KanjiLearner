package com.kanji.backend.kanji;

import java.util.List;

public record KanjiDetail(
        Long id,
        String kanjiCharacter,
        String onyomi,
        String kunyomi,
        String englishMeaning,
        String jlptLevel,
        int strokeCount,
        int displayOrder,
        String mainReading,
        List<KanjiMeaning> meanings,
        List<KanjiReading> readings) {

    static KanjiDetail of(Kanji kanji, List<KanjiMeaning> meanings, List<KanjiReading> readings) {
        return new KanjiDetail(kanji.getId(), kanji.getKanjiCharacter(), kanji.getOnyomi(), kanji.getKunyomi(),
                kanji.getEnglishMeaning(), kanji.getJlptLevel(), kanji.getStrokeCount(), kanji.getDisplayOrder(), kanji.getMainReading(),
                meanings, readings);
    }
}
