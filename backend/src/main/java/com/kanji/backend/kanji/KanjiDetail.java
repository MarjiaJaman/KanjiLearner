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
        List<KanjiReading> readings,
        List<String> strokes,
        Neighbor previous,
        Neighbor next) {

    // The kanji just before or after this one in display order, for the previous/next links.
    public record Neighbor(Long id, String kanjiCharacter) {

        static Neighbor of(Kanji kanji) {
            return kanji == null ? null : new Neighbor(kanji.getId(), kanji.getKanjiCharacter());
        }
    }

    static KanjiDetail of(Kanji kanji, List<KanjiMeaning> meanings, List<KanjiReading> readings,
            List<String> strokes, Kanji previous, Kanji next) {
        return new KanjiDetail(kanji.getId(), kanji.getKanjiCharacter(), kanji.getOnyomi(), kanji.getKunyomi(),
                kanji.getEnglishMeaning(), kanji.getJlptLevel(), kanji.getStrokeCount(), kanji.getDisplayOrder(), kanji.getMainReading(),
                meanings, readings, strokes, Neighbor.of(previous), Neighbor.of(next));
    }
}
