#comentários são feitos com hashtag
#essa linguagem não é case sensitive
#apesar disso, é comum e recomendado utilizar maiúsculas para os comandos principais

#aqui, montamos uma imagem utilizando uma outra como base
FROM node:14

#esse é o diretório em que as coisas acontecerão
WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5200

CMD ["node", "index.js"]



