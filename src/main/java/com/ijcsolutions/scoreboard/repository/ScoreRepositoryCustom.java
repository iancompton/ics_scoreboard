package com.ijcsolutions.scoreboard.repository;

import com.ijcsolutions.scoreboard.persistence.entity.Score;

import java.util.List;

public interface ScoreRepositoryCustom {
    List<Score> queryScore();
}
