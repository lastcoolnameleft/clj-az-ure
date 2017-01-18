# clj-az-ure

A Hello World app in Clojure on Azure

## Prerequisites

You will need [Leiningen][] 2.0.0 or above installed.

[leiningen]: https://github.com/technomancy/leiningen

## Running

To start a web server for the application, run:

    docker build -t my-clj-app .
    docker run -p 3000:3000 -it --rm --name my-running-app my-clj-app

## License

Copyright (c) 2017 Tommy Falgout
