FROM node:12
RUN mkdir /sdc-docker
ADD . /sdc-docker
WORKDIR /sdc-docker
RUN npm install
EXPOSE 5201
CMD [ "node", "server/server.compiled.js" ]




# FROM node:12
# RUN mkdir /practice-docker
# ADD . /practice-docker
# WORKDIR /practice-docker
# RUN npm i
# EXPOSE 5201
# CMD ["npm", "start"]