FROM quay.octanner.io/base/oct-java:8-oraclejdk
RUN wget https://services.gradle.org/distributions/gradle-1.12-bin.zip
RUN unzip gradle-1.12-bin.zip
COPY . /
RUN gradle-1.12/bin/gradle build
RUN pwd
RUN ls
CMD java -jar /build/libs/karen3-0.0.1-SNAPSHOT.jar --server.port=$PORT
