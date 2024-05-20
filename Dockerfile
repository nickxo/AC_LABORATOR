# Specifică imaginea de bază
FROM openjdk:latest

# Setează directorul de lucru în container
WORKDIR /app

# Copiază fișierul JAR în container
COPY ./build/libs/cloud-app-0.0.1-SNAPSHOT.jar /app/cloud-app.jar

# Expose the port
EXPOSE 8080

# Comanda pentru a rula aplicația
CMD ["java", "-jar", "cloud-app.jar"]
