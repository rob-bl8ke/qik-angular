# Development Notes

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 16.0.3.
- Development server: Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.
- Code scaffolding: Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.
- Build: Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.
- Running unit tests: 
Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).
- Running end-to-end tests: Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.

# GitHub Procedure

- Can't push to `main`. Must use a feature branch. Use `git reset --hard origin` if you have mistakenly committed to `main`. If you do not want to lose your commits, create a feature branch off of main before you do the reset.

# Dockerized

Useful Docker commands.

```bash
# List images and containers
docker image list -a
docker container ls -a

# Build a version
docker build . -t bobbyache/qikweb:1.0.0

# Run as a container
docker run -p 4200:4200 --name qikweb bobbyache/qikweb:1.0.0
docker run --rm -d -p 4200:4200 --name qikweb bobbyache/qikweb:1.0.0

# Remove the container
docker container rm --force 3d0184764e63
docker image rm 2767308b9f9c
```

Pushing it to Docker Hub.

```bash
# https://docs.docker.com/engine/reference/commandline/login/
docker logout
docker login -u bobbyache -p [password]
docker push bobbyache/qikweb:1.0.0
```