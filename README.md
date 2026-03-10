# 🚀 Spring Boot DevOps Project

This project is a simple **Spring Boot REST API** containerized using **Docker**.
It demonstrates the basic workflow of building a Java application, packaging it into a Docker image, and running it inside a container.

The project is intended for learning **DevOps fundamentals** such as:

* building Java applications
* containerization with Docker
* running containers
* port mapping between host and container

---

# 📦 Technologies

The project uses the following technologies:

* **Java 17**
* **Spring Boot**
* **Maven**
* **Docker**
* **REST API**

---

# 📁 Project Structure

```text
springboot-devops-project
│
├── src
│   └── main
│       ├── java
│       │   └── controller
│       │       └── HelloController.java
│       │
│       └── resources
│           └── application.properties
│
├── Dockerfile
├── pom.xml
└── README.md
```

---

# ⚙️ REST API Endpoint

The application exposes a simple REST endpoint.

### Request

```
GET /hello
```

### Response

```json
{
  "message": "Hello DevOps!"
}
```

---

# 🐳 Build Docker Image

To build the Docker image, run:

```bash
docker build -t springboot-devops .
```

---

# ▶️ Run the Container

Start the container with port mapping:

```bash
docker run -p 8050:8060 springboot-devops
```

### Port Mapping Explanation

```
HOST_PORT:CONTAINER_PORT
```

Example:

```
8050 : 8060
```

* **8050** → port on your local machine
* **8060** → port used by the Spring Boot application inside the container

---

# 🌐 Access the Application

After starting the container, the API will be available at:

```
http://localhost:8050/hello
```

Expected response:

```json
{
  "message": "Hello DevOps!"
}
```

---

# ⚙️ Application Configuration

The application port is configured in:

```
src/main/resources/application.properties
```

```
server.port=8060
```

---

# 🐳 Dockerfile

This project uses a simple Dockerfile:

```dockerfile
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8060

ENTRYPOINT ["java","-jar","app.jar"]
```

---

# 🎯 Project Purpose

The goal of this project is to demonstrate the basic DevOps workflow for a Java application:

* building the application
* containerizing with Docker
* exposing application ports
* running the application inside a container

---

# 👨‍💻 Author

Created as part of learning **Spring Boot, Docker, and DevOps practices**.
