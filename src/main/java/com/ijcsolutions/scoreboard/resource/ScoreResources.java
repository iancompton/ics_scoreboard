package com.ijcsolutions.scoreboard.resource;

import com.ijcsolutions.scoreboard.model.JsonApiResponse;
import com.ijcsolutions.scoreboard.model.Scores;
import com.ijcsolutions.scoreboard.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import java.util.List;

@Component
@Path("/scores")
@Consumes("application/vnd.api+json")
@Produces("application/vnd.api+json")
public class ScoreResources {

    @Autowired ScoreService scoreService;

    @GET
    public Response fetchScores() {
        List<Scores> scores = scoreService.fetchScores();
        return Response.ok(JsonApiResponse.builder().entities(scores).build()).build();
    }

    @POST
    public Response createScore(Scores score) {
        Scores createdScore = scoreService.createScore(score);
        return Response.ok(JsonApiResponse.builder().entity(createdScore).build()).build();
    }

}
