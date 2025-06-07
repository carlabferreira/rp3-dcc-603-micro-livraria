# Task 2 - step 1 - create this file

# Imagem base derivada do Node
FROM node

# Diretório de trabalho
WORKDIR /app

# Comando para copiar os arquivos para a pasta /app da imagem
COPY . /app

# Comando para instalar as dependências
RUN npm install

# Comando para inicializar (executar) a aplicação
CMD ["node", "/app/services/shipping/index.js"]


# Task2, step 2, no terminal: docker build -t micro-livraria/shipping -f shipping.Dockerfile ./
# step 3: alterado no package.json
# step 4:   npm run start 
#           docker run -ti --name shipping -p 3001:3001 micro-livraria/shipping