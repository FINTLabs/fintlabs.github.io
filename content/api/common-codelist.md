+++
date = "2017-04-26T11:49:04+02:00"
title = "Common Codelist"

+++

<!-- TOC -->

- [Overview](#overview)
- [ISO/IEC 5218](#isoiec-5218)
    - [Get a list of all codes](#get-a-list-of-all-codes)
    - [Result](#result)
    - [Get single code](#get-single-code)
    - [Result](#result-1)
- [ISO 3166-1 alpha-2](#iso-3166-1-alpha-2)
- [ISO 639-1 alpha-2](#iso-639-1-alpha-2)

<!-- /TOC -->

# Overview
The Common Codelist API has endpoints for codelist that are open, not spesicifc to organisations and shared by many the APIs. 

[GitHub](https://github.com/FINTprosjektet/fint-common-codelist)

# ISO/IEC 5218

## Get a list of all codes
`https://api.felleskomponent.no/felles/kodeverk/iso/5218`

```shell
$ curl https://api.felleskomponent.no/felles/kodeverk/iso/5218
```
## Result
```json
[
  {
    systemId: {
      identifikatorverdi: '0'
    },
    kode: '0',
    navn: 'uvisst'
  },
  {
    systemId: {
      identifikatorverdi: '1'
    },
    kode: '1',
    navn: 'mann'
  },
  {
    systemId: {
      identifikatorverdi: '2'
    },
    kode: '2',
    navn: 'kvinne'
  },
  {
    systemId: {
      identifikatorverdi: '9'
    },
    kode: '9',
    navn: 'gjelder ikke'
  }
]
```
## Get single code
GET `https://api.felleskomponent.no/felles/kodeverk/iso/5218/systemid/1`

```shell
$ curl https://api.felleskomponent.no/felles/kodeverk/iso/5218/systemid/1
```

## Result
```json
{
  systemId: {
    identifikatorverdi: "1"
  },
  kode: "1",
  navn: "mann"
}
```

# ISO 3166-1 alpha-2

# ISO 639-1 alpha-2