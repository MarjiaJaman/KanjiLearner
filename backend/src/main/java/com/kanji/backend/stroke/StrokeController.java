package com.kanji.backend.stroke;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/strokes")
public class StrokeController {

    private final StrokeRepository strokeRepository;

    public StrokeController(StrokeRepository strokeRepository) {
        this.strokeRepository = strokeRepository;
    }

    // GET /api/strokes?characters=きゃ → { "き": [path, ...], "ゃ": [path, ...] }, in the order typed.
    // A character without stroke data maps to an empty list.
    @GetMapping
    public Map<String, List<String>> strokes(@RequestParam String characters) {
        Map<String, List<String>> result = new LinkedHashMap<>();
        characters.codePoints().mapToObj(Character::toString).forEach((glyph) -> result.put(glyph, new ArrayList<>()));
        for (Stroke stroke : strokeRepository.findByGlyphInOrderByStrokeOrderAsc(result.keySet())) {
            result.get(stroke.getGlyph()).add(stroke.getPath());
        }
        return result;
    }
}
