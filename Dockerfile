FROM ubuntu:latest
 
ENV NODE_PORT  9090
 
ENV NODE_DOCUMENTROOT /var/node
 
ENV NODE_USER  nodeuser
 
RUN mkdir -p $NODE_DOCUMENTROOT
 
RUN useradd -m -d $NODE_DOCUMENTROOT -s /bin/bash $NODE_USER
 
WORKDIR $NODE_DOCUMENTROOT
 
COPY ./code/ $NODE_DOCUMENTROOT
 
RUN chown -R  $NODE_USER:$NODE_USER $NODE_DOCUMENTROOT

RUN apt update && apt install npm -y 
 
EXPOSE $NODE_PORT
 
USER $NODE_USER
 
ENTRYPOINT ["node"]
 
CMD ["app.js"]
