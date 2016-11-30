FROM gitlab/dind

RUN sudo apt-get update && \
	sudo apt-get --assume-yes install software-properties-common && \
	sudo apt-add-repository ppa:andrei-pozolotin/maven3 && \
	sudo apt-get update && \
	sudo apt-get --assume-yes install maven3 


RUN sudo add-apt-repository ppa:openjdk-r/ppa && \
	sudo apt-get update && \
	sudo apt-get --assume-yes install openjdk-8-jdk 

RUN sudo update-java-alternatives -s java-1.8.0-openjdk-amd64

RUN java -version	

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64

ENV LOG=file
ENTRYPOINT ["wrapdocker"]
CMD []	
