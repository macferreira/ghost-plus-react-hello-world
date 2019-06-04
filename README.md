# ghost + react app hello world

### Installation

Build with docker-compose.
```sh
$ docker-compose build --no-cache
```

This will build 3 images:  
app: frontend app based in https://github.com/facebook/create-react-app  
blog: blog application based in https://ghost.org/  
reverse_proxy: serves as reverse proxy and does the ssl termination for the 2 app

Set in hosts file, this will allow to access the app through the reverse proxy with example.com domain:
```sh
127.0.0.1       blog.example.com
127.0.0.1       app.example.com
```

Run the all the apps in the cluster with:
```sh
$ docker-compose up
```

app has basic http auth with the default pair test123/test123, this can be set through env vars, just spin up the cluster with something like:
```sh
HTTP_AUTH_LOGIN=someAuthLogin HTTP_AUTH_PASSWORD=someAuthPassword docker-compose up
```
