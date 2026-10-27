package com.kanji.backend.kanji;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "kanji")
public class Kanji {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "kanji_character", nullable = false, unique = true, length = 4)
    private String kanjiCharacter;

    @Column(nullable = false)
    private String onyomi;

    @Column(nullable = false)
    private String kunyomi;

    @Column(name = "english_meaning", nullable = false)
    private String englishMeaning;

    @Column(name = "jlpt_level", nullable = false, length = 2)
    private String jlptLevel;

    @Column(name = "stroke_count", nullable = false)
    private int strokeCount;

    @Column(name = "display_order", nullable = false)
    private int displayOrder;

    // Reading to show first when it isn't the kun'yomi, e.g. いち for 一. Null for most kanji.
    @Column(name = "main_reading")
    private String mainReading;

    protected Kanji() {
    }

    public Long getId() {
        return id;
    }

    public String getKanjiCharacter() {
        return kanjiCharacter;
    }

    public String getOnyomi() {
        return onyomi;
    }

    public String getKunyomi() {
        return kunyomi;
    }

    public String getEnglishMeaning() {
        return englishMeaning;
    }

    public String getJlptLevel() {
        return jlptLevel;
    }

    public int getStrokeCount() {
        return strokeCount;
    }

    public int getDisplayOrder() {
        return displayOrder;
    }

    public String getMainReading() {
        return mainReading;
    }
}
