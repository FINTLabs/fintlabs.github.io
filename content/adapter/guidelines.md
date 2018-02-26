+++
title = "Develop adapters"
description = "General guidelines for developing adapters for FINT"
weight = 2
+++

# Introduction
This articel amins to make you able to develop a FINT adapter.

# Getting started
A good startingpoint for developing an adapter is to go throug our quick tutorial:

* [tut-java-sse](Java)
* [tut-dotnet-sse](C#)

After that you can setup your adapter skeleton of choice:

* [https://github.com/FINTprosjektet/fint-sse-adapter-skeleton](Java skeleton)
* [https://github.com/FINTprosjektet/Fint.Sse.Adapter.Skeleton](C# (.NET core) skeleton)


# What does the skeleton do and what do you need to do?
The skeletons has all the code to:

* Connect to FINT
* Authentiacte to FINT (OAuth2)
* All the communication with FINT

Your task as a adapter developer is to:

1. Reponde to `events` sent from FINT
2. Interact with you backend system
3. Map you data to FINT 
4. Send back the information asked for in the `event`


