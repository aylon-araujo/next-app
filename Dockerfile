# Use uma imagem Node.js como base
FROM node:18-alpine

# Crie e defina o diretório de trabalho
WORKDIR /app

# Copie o package.json e o package-lock.json ou yarn.lock
COPY package*.json ./
# ou, se você estiver usando Yarn:
# COPY yarn.lock ./

# Instale as dependências
RUN npm install
# ou se você estiver usando Yarn:
# RUN yarn install

# Copie todo o código-fonte do projeto para o contêiner
COPY . .

# Construa o projeto Next.js
RUN npm run build
# ou se você estiver usando Yarn:
# RUN yarn build

# Exponha a porta que o Next.js usa por padrão
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
# ou se você estiver usando Yarn:
# CMD ["yarn", "start"]
