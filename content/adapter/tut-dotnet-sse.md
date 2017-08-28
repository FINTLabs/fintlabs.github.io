+++
title = "Tutorial: .Net SSE adapter"
weight = 11
description = "This is a tutorial on how to getting started developing a .Net SSE adapter"
draft = false
+++

### Introduction
This tutorial will lead you through the process of setting up and adapter to communicate with the Play-With-FINT-Adapter service.


### Setting up the enviornment

#### Clone the skeleton

```shell
$ git clone https://github.com/FINTprosjektet/Fint.Sse.Adapter.Skeleton.git my-adapter
$ cd my-adapter
$ rm -rf .git
```

#### Open the project in our favorite IDE
This is a `netcoreapp2.0`\\`netstandard2.0` project. You need to import the dependencies. You can either do it in the IDE or in the commandline. This example uses the `dotnet` CLI:

```shell
$ dotnet restore
```

### Get an OrgId
* Go <a href="https://play-with-fint-adapter.felleskomponent.no/admin/organization/generateOrgId" target="_blank">here</a> to generate an `OrgId`
* Replace `pwfa.no` with your `OrgId` in the `appsettings.json` file in the `Fint.Sse.Adapter.Console` project:

```json
{
  "Logging": {
    "IncludeScopes": false,
    "LogLevel": {
      "Default": "Debug",
      "System": "Information",
      "Microsoft": "Information"
    }
  },
  "Configuration": {
    "ConsoleTitle": "FINT Console Boilerplate",
    "SseEndpoint": "https://play-with-fint-adapter.felleskomponent.no/provider/sse",
    "StatusEndpoint": "https://play-with-fint-adapter.felleskomponent.no/provider/status",
    "ResponseEndpoint": "https://play-with-fint-adapter.felleskomponent.no/provider/response",
    "Organizations": "pwfa.no", <-- HERE
    "LogLocation": "logs"
  }
}
```

```csharp
                public void HandleEvent(Event<object> serverSideEvent)
                {
Breakpoint -->      if (serverSideEvent.IsHealthCheck())
                    {
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
* You can also hit the `dog` and `owner` controllers to see how `FintResources` and `Relations` are build. See [https://github.com/FINTmodels/Fint.Relation.Model](https://github.com/FINTmodels/Fint.Relation.Model) for more information.

### Links
* [Javadocs](https://docs.felleskomponent.no/fint-sse-adapter-skeleton) for the Java SSE Adapter Skeleton
* [Github project](https://github.com/FINTprosjektet/Fint.Sse.Adapter.Skeleton) for the CSharp/.Net SSE Adapter Skeleton
* [Fint.Sse](https://github.com/FINTlibs/Fint.Sse)
* [Fint.Relation.Model](https://github.com/FINTmodels/Fint.Relation.Model])
* [Overview](/adapter/overview/) of the adapter and FINT architecture




