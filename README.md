# my-app

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

## Docker
Dockerize the frontend

### Create the Docker image
```
docker build -t NAME/negotiator-v3-frontend .
```

### Use the container
```
docker run -it -p 8080:8080 --rm --name negotiator-v3-frontend NAME/negotiator-v3-frontend
```
