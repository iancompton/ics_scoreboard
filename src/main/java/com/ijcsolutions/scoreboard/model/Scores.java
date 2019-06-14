package com.ijcsolutions.scoreboard.model;

import lombok.Data;

@Data
public class Scores implements Entity {

    private Long id;
    private Long userNo;
    private Long gameId;
    private String timeAdded;
    private Long score;

}
