FROM node:latest
ENV HOME=/home/app
ENV DB_URL="mongodb://localhost:27017/crud"
ENV  NODE_ENV="DEV"
RUN apt-get update && apt-get install htop -y
COPY . $HOME/sample_app
WORKDIR $HOME/sample_app
RUN npm install
EXPOSE 3000
CMD ["npm", "start"] 
