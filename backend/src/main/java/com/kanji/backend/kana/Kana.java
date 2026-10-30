package com.kanji.backend.kana;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

// One cell of the kana chart. The default collation treats か, カ and が as equal,
// so the kana columns use a binary collation to keep them distinct.
@Entity
@Table(name = "kana", uniqueConstraints = @UniqueConstraint(columnNames = { "section", "row_index", "column_index" }))
public class Kana {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // basic, dakuten or combinations
    @Column(nullable = false, length = 20)
    private String section;

    @Column(name = "row_index", nullable = false)
    private int rowIndex;

    @Column(name = "column_index", nullable = false)
    private int columnIndex;

    @Column(nullable = false, unique = true, columnDefinition = "varchar(2) character set utf8mb4 collate utf8mb4_bin")
    private String hiragana;

    @Column(nullable = false, unique = true, columnDefinition = "varchar(2) character set utf8mb4 collate utf8mb4_bin")
    private String katakana;

    @Column(nullable = false, length = 4)
    private String romaji;

    protected Kana() {
    }

    public Long getId() {
        return id;
    }

    public String getSection() {
        return section;
    }

    public int getRowIndex() {
        return rowIndex;
    }

    public int getColumnIndex() {
        return columnIndex;
    }

    public String getHiragana() {
        return hiragana;
    }

    public String getKatakana() {
        return katakana;
    }

    public String getRomaji() {
        return romaji;
    }
}
