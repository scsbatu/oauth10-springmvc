package com.consumer;

import java.net.URI;

import org.springframework.security.oauth.consumer.client.OAuthRestTemplate;

public class ConsumerServiceImpl implements ConsumerService {
	
	private OAuthRestTemplate consumerRestTemplate;
	
	private String consumerDataURL;
	

	public String getProducerData() {
		String forObject = getConsumerRestTemplate().getForObject(URI.create(consumerDataURL), String.class);
		return forObject;
	}


	public OAuthRestTemplate getConsumerRestTemplate() {
		return consumerRestTemplate;
	}


	public void setConsumerRestTemplate(OAuthRestTemplate consumerRestTemplate) {
		this.consumerRestTemplate = consumerRestTemplate;
	}


	public String getConsumerDataURL() {
		return consumerDataURL;
	}


	public void setConsumerDataURL(String consumerDataURL) {
		this.consumerDataURL = consumerDataURL;
	}


	public String getProducerSecondData() {
		String forObject = getConsumerRestTemplate().getForObject(URI.create("http://localhost:8080/OAuthProducer/samplewithtoken"), String.class);
		return forObject;
	}

	

}
