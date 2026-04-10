
FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

# IMPORTANT FIX 👇
CMD ["sh", "-c", "java -jar target/*.jar"]