
# Kafka-Integrated Spring Boot Application

This is a sample Spring Boot application integrated with Apache Kafka. It demonstrates how to produce and consume messages using Kafka within a Spring Boot application.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- Docker and Docker Compose installed on your local machine.
- Java Development Kit (JDK) 17 or higher installed.
- [Postman](https://www.postman.com/) or any API testing tool for testing the Kafka Producer API.

## Getting Started

To get started with this project, follow these steps:

1. Clone the repository to your local machine:

```shell
git clone https://github.com/your-username/kafka-spring-boot.git
```

2. Navigate to the project directory:

```shell
cd kafka-spring-boot
```

3. Start Kafka and Zookeeper services using Docker Compose:

```shell
docker-compose up
```

4. Build and run the Spring Boot application:

```shell
./mvnw spring-boot:run
```

5. Open Postman or your preferred API testing tool.

6. Create a POST request to send a message to the Kafka Producer API:

   - Set the request URL to: `http://localhost:8080/kafka/publish`
   - Add a parameter named `message` and provide the message content.
   - Send the request.

7. Check the application console for Kafka Consumer logs to see if the message is consumed.

## Usage

- Use Postman or an API testing tool to send messages to the Kafka Producer API.
- Check the Kafka Consumer logs to verify that messages are being consumed.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
