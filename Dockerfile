# Imagem base com Node
FROM node:18

# Define diretório
WORKDIR /app

# Copia tudo para dentro do container
COPY . .

# Instala dependências e builda usando Yarn
RUN corepack enable && yarn install --immutable-cache --check-cache --immutable=false
RUN yarn build

# Expõe a porta
EXPOSE 3000

# Comando de inicialização
CMD ["yarn", "start"]

