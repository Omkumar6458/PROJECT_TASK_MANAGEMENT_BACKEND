
FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

# Give permission to mvnw
RUN chmod +x mvnw

# Use mvnw instead of mvn
RUN ./mvnw clean package -DskipTests

CMD ["java", "-jar", "target/*.jar"]

