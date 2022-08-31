#FROM node:14-alpine3.12
FROM nginx:1.15.8-alpine

#RUN rm -rf /usr/share/nginx/html/*
RUN rm /usr/share/nginx/html/*

COPY ./parent-spa/build /usr/share/nginx/html/parentApp
COPY ./child-spa/build /usr/share/nginx/html/childApp

COPY ./nginx.conf /etc/nginx

#FROM node:14-alpine3.12 as builder
# FROM node:14-alpine3.12

# WORKDIR /app
# COPY . /app

# #RUN npm config set strict-ssl=false
# RUN npm install

#WORKDIR /
#COPY --from=build /app/dist /app/dummy-pckg.nuspec app-build/

#RUN mv dummy-app dist
#RUN nuget pack dummy-pckg.nuspec


#FROM nginx:1.15.8-alpine
#COPY --from=builder /app/dist/apps/vessel-tracker /usr/share/nginx/html