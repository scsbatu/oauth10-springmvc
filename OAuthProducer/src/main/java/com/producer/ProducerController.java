package com.producer;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProducerController {

	@RequestMapping(value = "/sample")
	@ResponseBody
	public ResponseEntity<String> getSample() {
	
		StringBuilder out = new StringBuilder();
		out.append("This is first producer data from producer server ");
	
		HttpHeaders headers = new HttpHeaders();
		headers.set("Content-Type", "application/json");
		return new ResponseEntity<String>(out.toString(), headers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/samplewithtoken")
	@ResponseBody
	public ResponseEntity<String> getSampleWithToken() {
	
		StringBuilder out = new StringBuilder();
		out.append("This is producer data from producer server with token");
	
		HttpHeaders headers = new HttpHeaders();
		headers.set("Content-Type", "application/json");
		return new ResponseEntity<String>(out.toString(), headers, HttpStatus.OK);
	}
	

}
