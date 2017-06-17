+++
title = "Tutorial: Java SSE adapter"
weight = 1
description = "This is a tutorial on how to getting started developing a Java SSE adapter"
draft = false
+++

### Introduction
This tutorial will lead you through the process of setting up and adapter to communicate with the Play-With-FINT-Adapter service.





### Setting up the enviornment

#### Clone the skeleton

```shell
$ git clone https://github.com/FINTprosjektet/fint-sse-adapter-skeleton.git my-adapter
$ cd my-adapter
$ rm -rf .git
```

#### Open the project in your favorite IDE
This is a Gradle project so make sure to import the Gradle dependencies. You can either do it in the IDE or in the commandline:

```shell
$ ./gradlew --refresh-dependencies
```
### Get a OrgId
* Go to [here](https://play-with-fint-adapter.felleskomponent.no/admin/organization/generateOrgId) to get a `OrgId`
* Put the `OrgId` in the `application.yml` file:

```yaml
fint:
 adapter:
  organizations: OrgId
```
 
### The first test
* Set a breakpoint at the start of the handleEvent method in the `EventStatusService` class.

```java
                public void handleEvent(String json) {
Breakpoint -->      Event event = EventUtil.toEvent(json);
                    if (event.isHealthCheck()) {
                    ...
                }
```
* Start the adapter in debug mode
* Open a browser and hit [https://play-with-fint-adapter.felleskomponent.no/swagger-ui.html](https://play-with-fint-adapter.felleskomponent.no/swagger-ui.html)
* Send a health event from the `Health` controller.
* Step through the code to see what happens.
* You can also hit the `dog` and `owner` controllers to see how `FintResources` and `Relations` are build. See [https://github.com/FINTmodels/fint-relation-model](https://github.com/FINTmodels/fint-relation-model) for more information.


### Links
* [Javadocs](https://docs.felleskomponent.no/fint-sse-adapter-skeleton) for the Java SSE Adapter Skeleton
* [Github project](https://github.com/FINTprosjektet/fint-sse-adapter-skeleton) for the Java SSE Adapter Skeleton
* [fint-sse](https://github.com/FINTlibs/fint-sse)
* [fint-relation-model](https://github.com/FINTmodels/fint-relation-model)
* [Overview](/adapter/overview/) of the adapter and FINT architecture



