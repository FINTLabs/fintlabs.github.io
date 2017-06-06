+++
title = "Tutorial: Java SSE adapter"
weight = 1
description = "This is a tutorial on how to getting started developing a Java SSE adapter"
draft = true
+++

### Introduction
* [Javadocs](https://docs.felleskomponent.no/fint-sse-adapter-skeleton) for the Java SSE Adapter Skeleton
* [Github prosject](https://github.com/FINTprosjektet/fint-sse-adapter-skeleton) for the Java SSE Adapter Skeleton
* [Overview](/adapter/overview/) of the adapter and FINT architecture


### Setting up the enviornment

#### Clone the skeleton

```shell
$ git clone https://github.com/FINTprosjektet/fint-sse-adapter-skeleton.git my-adapter
$ cd my-adapter
```

#### Open the project in our favorite IDE
This is a Gradle project so make sure to import the Gradle dependencies. You can either do it in the IDE or in the commandline:

```shell
$ ./gradlew wrapper
$ ./gradlew --refresh-dependencies
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
* Open a browser and hit []()



