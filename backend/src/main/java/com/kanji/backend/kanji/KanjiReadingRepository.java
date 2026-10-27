package com.kanji.backend.kanji;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface KanjiReadingRepository extends JpaRepository<KanjiReading, Long> {

    List<KanjiReading> findByKanjiIdOrderBySortOrderAsc(Long kanjiId);
}
