package com.consumer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConsumerController {

	private ConsumerService consumerService;
	
	public ConsumerService getConsumerService() {
		return consumerService;
	}

	public void setConsumerService(ConsumerService consumerService) {
		this.consumerService = consumerService;
	}

	@RequestMapping("/OAuthProducer/sample")
	public String getProducer(Model model) throws Exception {
		model.addAttribute("sample", consumerService.getProducerData());
		return "producer";
	}
	
	@RequestMapping("/OAuthProducer/samplewithtoken")
	public String getProducerSecond(Model model) throws Exception {
		model.addAttribute("sampletoten", consumerService.getProducerSecondData());
		return "producer2";
	}

}
