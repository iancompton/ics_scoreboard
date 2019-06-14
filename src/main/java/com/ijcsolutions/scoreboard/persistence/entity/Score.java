package com.ijcsolutions.scoreboard.persistence.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import java.io.Serializable;
import java.sql.Timestamp;

@Data
@Entity
@Table(name = "score")
@SequenceGenerator(
        name = "ScoreSequence",
        sequenceName = "score_sequence",
        allocationSize = 1
)
public class Score implements Serializable {

    private static final long serialVersionUID = -5669974043142127082L;

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "ScoreSequence", strategy = GenerationType.SEQUENCE)
    private Long id;

    @Column(name = "userno")
    private Long userNo;

    @Column(name = "gameid")
    private Long gameId;

    @Column(name = "timeadded")
    private Timestamp timeAdded;

    @Column(name = "score")
    private Long score;

}
