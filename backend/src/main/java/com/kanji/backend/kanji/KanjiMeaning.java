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
@Table(name = "kanji_meaning", uniqueConstraints = @UniqueConstraint(columnNames = { "kanji_id", "sort_order" }))
public class KanjiMeaning {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonIgnore
    @Column(name = "kanji_id", nullable = false)
    private Long kanjiId;

    @JsonIgnore
    @Column(name = "sort_order", nullable = false)
    private int sortOrder;

    @Column(nullable = false)
    private String meaning;

    // Example sentence in Japanese, its full reading in kana, and its English translation.
    @Column(nullable = false)
    private String sentence;

    @Column(name = "sentence_reading", nullable = false)
    private String sentenceReading;

    @Column(name = "sentence_translation", nullable = false)
    private String sentenceTranslation;

    protected KanjiMeaning() {
    }

    public Long getId() {
        return id;
    }

    public String getMeaning() {
        return meaning;
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
