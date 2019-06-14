package com.ijcsolutions.scoreboard.service;

import com.ijcsolutions.scoreboard.model.Scores;
import com.ijcsolutions.scoreboard.persistence.entity.Score;
import com.ijcsolutions.scoreboard.repository.ScoreRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ScoreService {

    @Autowired private ScoreRepository scoreRepository;
    private ModelMapper mapper = new ModelMapper();

    public List<Scores> fetchScores() {
        List<Score> scores = scoreRepository.queryScore();
        List<Scores> result = new ArrayList<>();
        scores.forEach(score -> result.add(mapper.map(score, Scores.class)));
        return result;
    }

    public Scores createScore(Scores newScore) {
        Score score = mapper.map(newScore, Score.class);
        Score createdScore = scoreRepository.save(score);
        newScore.setId(createdScore.getId());
        return newScore;
    }
}
