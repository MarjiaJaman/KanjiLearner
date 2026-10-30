package com.kanji.backend.kanji;

import java.util.Collection;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface KanjiRepository extends JpaRepository<Kanji, Long> {

    Page<Kanji> findByKanjiCharacterIn(Collection<String> kanjiCharacters, Pageable pageable);

    Optional<Kanji> findFirstByDisplayOrderLessThanOrderByDisplayOrderDesc(int displayOrder);

    Optional<Kanji> findFirstByDisplayOrderGreaterThanOrderByDisplayOrderAsc(int displayOrder);
}
