+++
title = "Tutorial: Java SSE adapter"
weight = 10
description = "This is a tutorial on how to getting started developing a Java SSE adapter"
draft = false
+++

### Introduction
This tutorial will lead you through the process of setting up and adapter to communicate with the Play-With-FINT-Adapter service.





### Setting up the environment

#### Clone the skeleton

```shell
$ git clone https://github.com/FINTLabs/fint-sse-adapter-skeleton.git my-adapter
$ cd my-adapter
$ rm -rf .git
```

#### Open the project in your favorite IDE
This is a Gradle project so make sure to import the Gradle dependencies. You can either do it in the IDE or in the commandline:

```shell
$ ./gradlew --refresh-dependencies build
```

>*Note that this project uses `Lombok` so you need to enable `annotation processing` if you use `IntelliJ`. There is also a `Lombok`-plugin for `IntelliJ`*

### Get an OrgId
* Go <a href="https://play-with-fint-adapter.felleskomponent.no/demo/organization/generateOrgId" target="_blank">here</a> to generate an `OrgId`. 

> This `OrgId` is vaild until midnight the same day.
 
* Replace `pwfa.no` with your `OrgId` in the `application.yml` file:

```yaml
fint:
 adapter:
  organizations: OrgId
```
 
### The first test
* Set a breakpoint at the start of the handleEvent method in the `EventHandlerService` class.

```java
                public void handleEvent(Event event) {
Breakpoint -->      if (event.isHealthCheck()) {
                    ...
                }
```
* Start the adapter in debug mode
* Open a browser and hit [https://play-with-fint-adapter.felleskomponent.no/swagger-ui.html](https://play-with-fint-adapter.felleskomponent.no/swagger-ui.html)
* From the `Admin` controller, configure the `/admin/health` with setting the following headers:
  * `x-org-id` use the generated OrgId
  * `x-client` to `test`
* Send the health event from the `/admin/health` endpoint.
* Step through the code to see what happens.
* You can also hit the `dog` and `owner` controllers to see how `FintResources` and `Relations` are build. See [https://github.com/FINTmodels/fint-relation-model](https://github.com/FINTmodels/fint-relation-model) for more information.

### Security
The `adapter` uses `OAuth2` by default to authenticated to the `provider` endpoint. This tutorial is set up with at tutorial user. In production one will get a *real* user. This is the `OAuth2` config:

```yaml
fint:
 oauth:
  enabled: true
  username: pwfatut
  password: pwfatut
  client-id: 2d0ed372-53fb-4d0a-9e7f-d546c5cf2d71
  client-secret: kgaiww60LjjNh0iyfv0KSjMZMbv04L6YZfYq5iYpu6IhIyxo6UFdslQMw_BBmZeVOuUCl75f3dE6FaDTVxgYjg
  access-token-uri: https://idp.felleskomponent.no/nidp/oauth/nam/token
  scope: fint-client
```

### Links
* [Javadocs](https://docs.felleskomponent.no/fint-sse-adapter-skeleton) for the Java SSE Adapter Skeleton
* [Github project](https://github.com/FINTprosjektet/fint-sse-adapter-skeleton) for the Java SSE Adapter Skeleton
* [fint-sse](https://github.com/FINTlibs/fint-sse)
* [fint-relation-model](https://github.com/FINTmodels/fint-relation-model)
* [Overview](/adapter/overview/) of the adapter and FINT architecture

### Contribute
If you find bugs or have suggestions for improvement please feel free to submit an [issue]((https://github.com/FINTprosjektet/fint-sse-adapter-skeleton/issues).



