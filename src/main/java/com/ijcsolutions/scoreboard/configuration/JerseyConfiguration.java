package com.ijcsolutions.scoreboard.configuration;

import com.ijcsolutions.scoreboard.resource.ScoreResources;
import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.context.annotation.Configuration;

@Configuration
public class JerseyConfiguration extends ResourceConfig {

    public JerseyConfiguration() {
        register(ScoreResources.class);
    }

}
