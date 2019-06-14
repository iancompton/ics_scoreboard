package com.ijcsolutions.scoreboard.repository;

import com.ijcsolutions.scoreboard.persistence.entity.Score;
import org.springframework.data.repository.CrudRepository;

public interface ScoreRepository extends CrudRepository<Score, Long>, ScoreRepositoryCustom {}
