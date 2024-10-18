FROM maven:3.9.9-amazoncorretto-11-debian AS build
RUN apt-get update && apt-get install git -y
RUN git clone https://github.com/saivamsipranay/demo-java.git
RUN cd demo-java/
RUN mvn package

FROM tomcat:9.0.96-jdk17-corretto
COPY --from=build /demo-java/target/demo.war ./webapps
EXPOSE 8080
CMD ["./bin/catalina.sh", "run"]
