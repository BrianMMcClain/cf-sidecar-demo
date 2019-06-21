package com.github.brianmmcclain.springcloudconfigsidecar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class SpringCloudConfigSidecarApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringCloudConfigSidecarApplication.class, args);
	}

}
