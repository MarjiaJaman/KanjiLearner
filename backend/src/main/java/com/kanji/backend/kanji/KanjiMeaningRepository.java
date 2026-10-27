package com.kanji.backend.kanji;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface KanjiMeaningRepository extends JpaRepository<KanjiMeaning, Long> {

    List<KanjiMeaning> findByKanjiIdOrderBySortOrderAsc(Long kanjiId);
}
