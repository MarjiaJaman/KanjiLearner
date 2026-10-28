package com.kanji.backend.kanji;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface KanjiRepository extends JpaRepository<Kanji, Long> {

    List<Kanji> findAllByOrderByDisplayOrderAsc();

    Optional<Kanji> findFirstByDisplayOrderLessThanOrderByDisplayOrderDesc(int displayOrder);

    Optional<Kanji> findFirstByDisplayOrderGreaterThanOrderByDisplayOrderAsc(int displayOrder);
}
