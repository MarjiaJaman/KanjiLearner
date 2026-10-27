package com.kanji.backend.kanji;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

@Entity
@Table(name = "kanji_reading", uniqueConstraints = @UniqueConstraint(columnNames = { "kanji_id", "sort_order" }))
public class KanjiReading {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonIgnore
    @Column(name = "kanji_id", nullable = false)
    private Long kanjiId;

    @JsonIgnore
    @Column(name = "sort_order", nullable = false)
    private int sortOrder;

    // The reading in hiragana, plus a common word that uses it.
    @Column(nullable = false)
    private String reading;

    @Column(nullable = false)
    private String word;

    @Column(name = "word_reading", nullable = false)
    private String wordReading;

    @Column(name = "word_meaning", nullable = false)
    private String wordMeaning;

    // Example sentence in Japanese, its full reading in kana, and its English translation.
    @Column(nullable = false)
    private String sentence;

    @Column(name = "sentence_reading", nullable = false)
    private String sentenceReading;

    @Column(name = "sentence_translation", nullable = false)
    private String sentenceTranslation;

    protected KanjiReading() {
    }

    public Long getId() {
        return id;
    }

    public String getReading() {
        return reading;
    }

    public String getWord() {
        return word;
    }

    public String getWordReading() {
        return wordReading;
    }

    public String getWordMeaning() {
        return wordMeaning;
    }

    public String getSentence() {
        return sentence;
    }

    public String getSentenceReading() {
        return sentenceReading;
    }

    public String getSentenceTranslation() {
        return sentenceTranslation;
    }
}
