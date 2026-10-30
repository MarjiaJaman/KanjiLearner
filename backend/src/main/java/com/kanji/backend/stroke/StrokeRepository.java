package com.kanji.backend.stroke;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface StrokeRepository extends JpaRepository<Stroke, Long> {

    List<Stroke> findByGlyphOrderByStrokeOrderAsc(String glyph);

    List<Stroke> findByGlyphInOrderByStrokeOrderAsc(Collection<String> glyphs);
}
