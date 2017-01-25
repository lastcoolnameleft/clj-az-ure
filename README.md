# clj-az-ure

A Hello World app in Clojure on Azure

FYI, currently broken.  Experimenting to fix.
[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://azuredeploy.net/)


## Purpose

```
I wrote this project becauase I loves rhymes.  I do them all the times.
Clojure is a JVM lisp, that feels as home like Apple Crisp.
Microsoft now loves Open Source and is like a hurrican in it's gale force.
I wanted to show how easy it was, marrying the two like some Game of Thrones coz.
Simple Made Easy changed my life, removing my developer strife.
```

## Dev Notes

### Prerequisites

You will need [Leiningen][] 2.0.0 or above installed.

[leiningen]: https://github.com/technomancy/leiningen


### Run Locally

    docker build .
    docker run -p 3000:3000 -it --rm clj-az-ure

### Build for Docker Hub push

    docker build -t lastcoolnameleft/clj-az-ure .
    docker push lastcoolnameleft/clj-az-ure
  
### Deploy to Azure (Portal)
    
    Click the new resource plus button. "+"
    Click "Web + Mobile"
    Select "Web App on Linux"
    Enter globally unique app name.  e.g. lastcoolnameleft-clj-az-ure
    Create new Resource Group
    Click "Configure Container"
    Select "Image Source" -> "Docker Hub"
    Enter in "Image and optional tag": lastcoolnameleft/clj-az-ure
    Leave Startup command blank.
    Click OK
    Click "Create"

### Deploy to Azure (CLI)
     
     az group create -n 'clj-az-ure-rg' -l 'westus'
     az appservice plan create -n 'clj-az-ure-as' -g 'clj-az-ure-rg' --is-linux -l 'westus'
     az appservice web create -n 'lastcoolnameleft-clj-az-ure' -p 'clj-az-ure-as' -g 'clj-az-ure-rg'
     az appservice web config container update -c lastcoolnameleft/clj-az-ure --resource-group clj-az-ure-rg --name lastcoolnameleft-clj-az-ure
     
## License

Copyright (c) 2017 Tommy Falgout
