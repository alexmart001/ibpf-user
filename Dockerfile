FROM openjdk:11
VOLUME /tmp
ADD ./target/ibpf-user-0.0.1-SNAPSHOT.jar ibpf-user.jar
ENTRYPOINT ["java","-jar","/ibpf-user.jar"]