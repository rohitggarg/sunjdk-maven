FROM ubuntu:16.04
ADD jdk-5-x64.bin .
RUN echo 'yes' | ./jdk-5-x64.bin
RUN rm jdk-5-x64.bin
ADD apache-maven-2.2.1-bin.tar.gz .
ENV PATH $PATH:/jdk1.5.0_22/bin:/apache-maven-2.2.1/bin/
ENV JAVA_HOME /jdk1.5.0_22
ENV M2_HOME /apache-maven-2.2.1/
ENV M2_REPO /root/.m2
ENTRYPOINT ["mvn"]
WORKDIR /root/project
