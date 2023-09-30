
FROM node:latest as build

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install
RUN npm install -g @angular/cli

COPY . .
RUN npm run build:prod

FROM nginx:alpine
COPY --from=build /app/dist/qik-angular/ /usr/share/nginx/html

EXPOSE 80

