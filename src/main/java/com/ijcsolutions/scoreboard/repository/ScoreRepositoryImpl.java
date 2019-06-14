package com.ijcsolutions.scoreboard.repository;

import com.ijcsolutions.scoreboard.persistence.entity.Score;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

public class ScoreRepositoryImpl implements ScoreRepositoryCustom {

    @PersistenceContext private EntityManager entityManager;

    @Override
    public List<Score> queryScore() {
        String queryString = "select s from Score s";
        queryString += " order by score desc";

        Query query = entityManager.createQuery(queryString);

        return (List<Score>) query.getResultList();
    }
}
