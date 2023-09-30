FROM node:latest as build

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install
RUN npm install -g @angular/cli

COPY . .
RUN npm run build

# TODO: (Rob) On applying environment settings... fix this
# RUN npm run build --prod

EXPOSE 4200

CMD ["ng", "serve", "--host=0.0.0.0", "--disable-host-check"]
