+++
title = "Models and Common API"
description = "Here you can find which modeles belongs to which Common API"
weight = 2
+++

# Introduction
*FINT Information models* are models used in the *Common API*. The models contains information resoures the county council use in their day to day tasks. *FINT* aims to develop this model to contain vital information in all the areas the county council operates in. This means that every new version will contain more information and an new areas.

# Versioning

FINT is using [semantic versioning](http://semver.org/) for it's models:

- `MAJOR` version when you make **incompatible changes**
- `MINOR` *(feature release)* version when you add functionality in a **backwards-compatible manner**, and
- `PATCH` *(bug fixes)* version when you make **backwards-compatible bug fixes**.

Additional labels for pre-release and build metadata are available as extensions to the `MAJOR.MINOR.PATCH` format. 

*After version 1.1.0 the `MINOR` releases will be even numbers.*


>The version relation between the *FINT Information model* and the *technical implementations* is in the `MAJOR` and `MINOR` versions. `MAJOR` and `MINOR` will always be the same for *FINT Information model* and the *technical implementations*. A `Maven` or `NuGet` package for release `1.1.3` will have the version `1.1.x`. 


# Relation between Common API and the models
This table shows which models belongs to which Common API. It also links to the documentation of the model and the technical implementation of the model (GitHub and Maven/NuGet). The version is the version of *FINT Information model*.

| **Common API** |                                                       **Technical**                                                       |                                                                                      **Current release**                                                                                      |
| -------------- | ------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Personal       | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net) | [ ![Download](https://api.bintray.com/packages/fint/maven/fint-administrasjon-model-java/images/download.svg) ](https://bintray.com/fint/maven/fint-administrasjon-model-java/_latestVersion) |
| Organisasjon   | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net) | [ ![Download](https://api.bintray.com/packages/fint/maven/fint-administrasjon-model-java/images/download.svg) ](https://bintray.com/fint/maven/fint-administrasjon-model-java/_latestVersion) |
| Kodeverk       | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net) | [ ![Download](https://api.bintray.com/packages/fint/maven/fint-administrasjon-model-java/images/download.svg) ](https://bintray.com/fint/maven/fint-administrasjon-model-java/_latestVersion) |
| Utdanning      | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)      | [ ![Download](https://api.bintray.com/packages/fint/maven/fint-utdanning-model-java/images/download.svg) ](https://bintray.com/fint/maven/fint-utdanning-model-java/_latestVersion)           |
| Vigo kodeverk  | [Java](https://docs.felleskomponent.no/java/fint-vigokv-model) / [.NET](https://docs.felleskomponent.no/net)              | [ ![Download](https://api.bintray.com/packages/fint/maven/fint-vigokv-model/images/download.svg) ](https://bintray.com/fint/maven/fint-vigokv-model/_latestVersion)                           |
| Lønnsmelding   | [Java](https://docs.felleskomponent.no/java) / [.NET](https://docs.felleskomponent.no/net)                                | Q1 2018                                                                                                                                                                                       |
| Variabel lønn  | [Java](https://docs.felleskomponent.no/java) / [.NET](https://docs.felleskomponent.no/net)                                | Q1 2018                                                                                                                                                                                       |
| Faktura        | [Java](https://docs.felleskomponent.no/java) / [.NET](https://docs.felleskomponent.no/net)                                | Q1 2018                                                                                                                                                                                       |