# Use imagem base com Node + pnpm
FROM node:18

# Instala pnpm globalmente
RUN npm install -g pnpm

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto para dentro do container
COPY . .

# Instala as dependências e gera o build
RUN pnpm install
RUN pnpm build

# Expõe a porta padrão do Cal.com
EXPOSE 3000

# Comando que inicia a aplicação
CMD ["pnpm", "start"]

