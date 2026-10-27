package com.kanji.backend.kanji;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface KanjiRepository extends JpaRepository<Kanji, Long> {

    List<Kanji> findAllByOrderByDisplayOrderAsc();
}
