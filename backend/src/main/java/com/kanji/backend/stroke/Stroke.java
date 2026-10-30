package com.kanji.backend.stroke;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

// One stroke of a kanji or kana as an SVG path on KanjiVG's 109×109 grid (CC BY-SA 3.0).
@Entity
@Table(name = "stroke", uniqueConstraints = @UniqueConstraint(columnNames = { "glyph", "stroke_order" }))
public class Stroke {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Binary collation, so か, カ and が are different glyphs.
    @Column(nullable = false, columnDefinition = "varchar(2) character set utf8mb4 collate utf8mb4_bin")
    private String glyph;

    @Column(name = "stroke_order", nullable = false)
    private int strokeOrder;

    @Column(nullable = false, length = 512)
    private String path;

    protected Stroke() {
    }

    public String getGlyph() {
        return glyph;
    }

    public String getPath() {
        return path;
    }
}
