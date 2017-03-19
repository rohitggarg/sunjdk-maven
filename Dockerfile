FROM ubuntu:16.04
ADD http://ftp.cc.uoc.gr/Java/Linux-x86_64/1.5u22/jdk-1_5_0_22-linux-amd64.bin ./jdk-5-x64.bin
RUN chmod +x jdk-5-x64.bin
RUN echo 'yes' | ./jdk-5-x64.bin
RUN rm jdk-5-x64.bin
ADD http://archive.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.tar.gz .
ENV PATH $PATH:/jdk1.5.0_22/bin:/apache-maven-2.2.1/bin/
ENV JAVA_HOME /jdk1.5.0_22
ENV M2_HOME /apache-maven-2.2.1/
ENV M2_REPO /root/.m2
ENTRYPOINT ["mvn"]
WORKDIR /root/project
