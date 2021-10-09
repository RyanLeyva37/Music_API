package com.promineotech.MusicAPI.controller.support;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.boot.web.server.LocalServerPort;

import lombok.Getter;

public class BaseTest {
	@LocalServerPort
	private int serverPort;
	
	@Autowired
	@Getter
	private TestRestTemplate restTemplate;
	
	protected String getBaseUriForReadArtist() {
		return String.format("http://localhost:%d/Music_Artists", serverPort);
	}
	
	protected String getBaseUriForCreateArtist() {
		return String.format("http://localhost:%d/Music_Artists", serverPort);
	}
}