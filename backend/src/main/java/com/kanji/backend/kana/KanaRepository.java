package com.kanji.backend.kana;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface KanaRepository extends JpaRepository<Kana, Long> {

    List<Kana> findAllByOrderByIdAsc();
}
