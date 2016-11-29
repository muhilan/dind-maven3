FROM gitlab/dind

RUN sudo apt-get update && \
	sudo apt-get --assume-yes install software-properties-common && \
	sudo apt-add-repository ppa:andrei-pozolotin/maven3 && \
	sudo apt-get update && \
	sudo apt-get --assume-yes install maven3 

ENV LOG=file
ENTRYPOINT ["wrapdocker"]
CMD []	
