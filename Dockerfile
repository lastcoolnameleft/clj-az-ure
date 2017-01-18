FROM clojure
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY project.clj /usr/src/app/
RUN lein deps
COPY . /usr/src/app
RUN lein ring uberjar
CMD ["java", "-jar", "target/hello-world-0.1.0-SNAPSHOT-standalone.jar"]
#RUN lein ring uberjar app-standalone.jar
#RUN mv "$(lein uberjar | sed -n 's/^Created \(.*standalone\.jar\)/\1/p')" app-standalone.jar
#CMD ["java", "-jar", "target/app-standalone.jar"]
