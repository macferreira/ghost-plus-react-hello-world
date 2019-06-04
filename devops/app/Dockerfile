# stage01: build the app
FROM node:8 as react-build
WORKDIR /app
RUN git clone https://github.com/facebook/create-react-app.git && \
    cd create-react-app && \
    npx create-react-app my-app && \
    cd my-app && \
    npm run build

# stage02: the running environment
FROM nginx:alpine
COPY --from=react-build /app/create-react-app/my-app/build/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]