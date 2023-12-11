package com.kafka.api.message;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
public class KafkaConsumer {

    @KafkaListener(topics = "testTopic", groupId = "mygroup")
    public void listen(String message) {
        System.out.println("Received message in group mygroup: " + message);
    }
}