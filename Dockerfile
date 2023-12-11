# Java 17 JDK kullanarak güncelleyin
FROM openjdk:17 as build

# Çalışma dizini ayarlanır
WORKDIR /workspace/app

# Maven bağımlılıklarını çözümlemek ve cachelemek için pom.xml dosyasını kopyalar
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

# Uygulamayı build eder ve paketler
RUN ./mvnw install -DskipTests

# Çalıştırma için yeni bir stage
FROM openjdk:17

# Çalışma dizini belirlenir
WORKDIR /app

# Build stage'den jar dosyasını kopyalar
COPY --from=build /workspace/app/target/*.jar app.jar

# Uygulamayı çalıştırmak için gerekli komut
ENTRYPOINT ["java","-jar","/app/app.jar"]
