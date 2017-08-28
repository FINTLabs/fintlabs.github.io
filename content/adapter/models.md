+++
title = "Models and Common API"
description = "Here you can find which modeles belongs to which Common API"
weight = 2
+++

# Introduction
*FINT Information models* are models used in the *Common API*. The models contains information ressoures the county council use in their day to day tasks. *FINT* aims to develop this model to contain vital information in all the areas the county council operates in. This means that every new version will contain more information and an new areas.

# Versioning

FINT is using [semantic versioning](http://semver.org/) for it's models:

- `MAJOR` version when you make **incompatible changes**
- `MINOR (featur release)` version when you add functionality in a **backwards-compatible manner**, and
- `PATCH (bugfixes)` version when you make **backwards-compatible bug fixes**.

Additional labels for pre-release and build metadata are available as extensions to the `MAJOR.MINOR.PATCH` format. 

>After version 1.1.0 the `MINOR` releases will be even numbers.


>The version relation between the *FINT Information model* and the *technical implementations* is in the `MAJOR` and `MINOR` versions. `MAJOR` and `MINOR` will always be the same for *FINT Information model* and the *technical implementations*. A `Maven` or `NuGet` package for release `1.1.3` will have the version `1.1.x`. 


# Relation between Common API and the models
This table shows which models belongs to which Common API. It also links to the documentation of the model and the technical implementation of the model (GitHub and Maven/NuGet). The version is the version of *FINT Information model*

|  **Common API** | **Model** | **Technical** | **Current release** |
|  ------ | ------ | ------ | ------ |
|  Personal | [Person](https://informasjonsmodell.felleskomponent.no/docs/felles_person) | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net) | v1.1.0-rc2 |
|           | [Personalressurs](https://informasjonsmodell.felleskomponent.no/docs/personal_personalressurs) | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net) | v1.1.0-rc2 |
|           | [Arbeidsforhold](https://informasjonsmodell.felleskomponent.no/docs/personal_arbeidsforhold) | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net) | v1.1.0-rc2 |
|  Organisasjon | [Organisasjonselement](https://informasjonsmodell.felleskomponent.no/docs/organisasjon_organisasjonselement) | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|  Kodeverk | [Ansvar](https://informasjonsmodell.felleskomponent.no/docs/kodeverk_ansvar) | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net) | v1.1.0-rc2 |
|   | [Art](https://informasjonsmodell.felleskomponent.no/docs/kodeverk_art) | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net) | v1.1.0-rc2 |
|   | [Funksjon](https://informasjonsmodell.felleskomponent.no/docs/kodeverk_funksjon) | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Prosjekt](https://informasjonsmodell.felleskomponent.no/docs/kodeverk_prosjekt) | [Java](https://docs.felleskomponent.no/java/fint-administrasjon-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|  Utdanning | [Undervisningsforhold](https://informasjonsmodell.felleskomponent.no/docs/basisklasser_undervisningsforhold) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Basisgruppe](https://informasjonsmodell.felleskomponent.no/docs/gruppe_basisgruppe) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Eksamengruppe](https://informasjonsmodell.felleskomponent.no/docs/gruppe_eksamengruppe) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Fag](https://informasjonsmodell.felleskomponent.no/docs/gruppe_fag) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Kontaktlærergruppe](https://informasjonsmodell.felleskomponent.no/docs/gruppe_kontaktlarergruppe) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Programområde](https://informasjonsmodell.felleskomponent.no/docs/gruppe_programomrade) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Trinn](https://informasjonsmodell.felleskomponent.no/docs/gruppe_trinn) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Undervisningsgruppe](https://informasjonsmodell.felleskomponent.no/docs/gruppe_undervisningsgruppe) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Utdannigsprogram](https://informasjonsmodell.felleskomponent.no/docs/gruppe_utdannigsprogram) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Fravær](https://informasjonsmodell.felleskomponent.no/docs/komplekse_datatyper_fravar) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Resultat](https://informasjonsmodell.felleskomponent.no/docs/komplekse_datatyper_resultat) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Medlemskap](https://informasjonsmodell.felleskomponent.no/docs/utdanning_medlemskap) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Elevkategori] (https://informasjonsmodell.felleskomponent.no/docs/kodeverk_elevkategori) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Skole](https://informasjonsmodell.felleskomponent.no/docs/kodeverk_grepkode) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Grepkode](https://informasjonsmodell.felleskomponent.no/docs/kodeverk_vigokode) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Vigokode](https://informasjonsmodell.felleskomponent.no/docs/kodeverk_karakterskala) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Karakterskala](https://informasjonsmodell.felleskomponent.no/docs/kodeverk_karakterverdi) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Karakterverdi](https://informasjonsmodell.felleskomponent.no/docs/organisasjon_skole) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Elevforhold](https://informasjonsmodell.felleskomponent.no/docs/ressurser_elevforhold) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Elevressurs](https://informasjonsmodell.felleskomponent.no/docs/ressurser_elevressurs) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Rom](https://informasjonsmodell.felleskomponent.no/docs/ressurser_rom) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| v1.1.0-rc2 |
|   | [Time](https://informasjonsmodell.felleskomponent.no/docs/timeplan_time )| [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)|v1.1.0-rc2 |
|   | [Vigokodeverk](https://informasjonsmodell.felleskomponent.no/docs/package_vigo_kodeverk) | [Java](https://docs.felleskomponent.no/java/fint-utdanning-model-java) / [.NET](https://docs.felleskomponent.no/net)| September (v1.2.0) |
|  Lønnsmelding |  | [Java](https://docs.felleskomponent.no/java) / [.NET](https://docs.felleskomponent.no/net) | Oktober (v1.4.0)  |
|  Variabel lønn |  | [Java](https://docs.felleskomponent.no/java) / [.NET](https://docs.felleskomponent.no/net) | Oktober (v1.6.0) |
|  Faktura |  | [Java](https://docs.felleskomponent.no/java) / [.NET](https://docs.felleskomponent.no/net) | Oktober (v1.8.0)|


