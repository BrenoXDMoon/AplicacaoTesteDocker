#Começa com uma imagem de Node.js 10 (LTS)
FROM node:10

#Especifica o diretório da imagem no qual todos os comandos serão executados
WORKDIR usr/src/app

#Copia os arquivos do pacote e instala as dependências
COPY package*.json ./
RUN npm install

#Copia todos os arquivos da aplicação para a imagem
COPY . .

#Comando default para ser executado na inicialização do container
CMD ["npm", "start"]