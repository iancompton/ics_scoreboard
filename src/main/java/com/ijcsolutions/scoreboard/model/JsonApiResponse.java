package com.ijcsolutions.scoreboard.model;

import lombok.Builder;
import lombok.Data;

import java.net.URI;
import java.util.List;
import java.util.Map;

@Data
@Builder
public class JsonApiResponse {

    private Entity entity;
    private List<? extends Entity> entities;
    private Object meta;
    private List<? extends Entity> includes;
    private Map<String, URI> links;
}