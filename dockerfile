FROM maven:3-openjdk-17
COPY src /home/frm/src
COPY pom.xml /home/frm
WORKDIR /home/frm
RUN mvn clean test -DskipTests=true