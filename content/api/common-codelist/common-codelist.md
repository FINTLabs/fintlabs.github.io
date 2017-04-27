+++
date = "2017-04-26T11:49:04+02:00"
title = "Common Codelist"
weight = 11
+++

## Common Code List
The Common Codelist API has endpoints for codelist that are open, not spesicifc to organisations and shared by many the APIs. 

<ul class="fa-ul">
  <li><i class="fa-li fa fa-github"></i><a href="https://github.com/FINTprosjektet/fint-common-codelist">FINT Common Codelist</a></li>
</ul>

### ISO 639-1 alpha-2

<ul class="fa-ul">
  <li><i class="fa-li fa fa-book"></i><a href="https://dokumentasjon.felleskomponent.no/docs/iso_sprak">Information model for ISO 639-1 alpha-2</a></li>
</ul>

#### Get all codes

> Get all codes 
 
```shell
$ curl "https://api.felleskomponent.no/felles/kodeverk/iso/6391alpha2"
```

> Result

```json
[
  {
    "systemId": {
      "identifikatorverdi": "aa"
    },
    "kode": "aa",
    "navn": "Afar"
  },
  {
    "systemId": {
      "identifikatorverdi": "ab"
    },
    "kode": "ab",
    "navn": "Abkhasisk"
  },
  {
    "systemId": {
      "identifikatorverdi": "ae"
    },
    "kode": "ae",
    "navn": "Avestisk"
  },
  {
    "systemId": {
      "identifikatorverdi": "af"
    },
    "kode": "af",
    "navn": "Afrikaans"
  },
  {
    "systemId": {
      "identifikatorverdi": "ak"
    },
    "kode": "ak",
    "navn": "Akan"
  },
  {
    "systemId": {
      "identifikatorverdi": "am"
    },
    "kode": "am",
    "navn": "Amharisk"
  },
  {...}
]
```

Endpoint to get all codes

***HTTP Request***

`GET https://api.felleskomponent.no/felles/kodeverk/iso/6391alpha2`

***HTTP Response***

* `200 - Success`
* `404 - Not found`

#### Get single code

> Get single code

```shell
$ curl "https://api.felleskomponent.no/felles/kodeverk/iso/6391alpha2/systemid/aa"
```

> Result

```json
{
  "systemId": {
    "identifikatorverdi": "ae"
  },
  "kode": "ae",
  "navn": "Avestisk"
}
```

***HTTP Request***

`GET https://api.felleskomponent.no/felles/kodeverk/iso/6391alpha2/systemid/:id`

***HTTP Response***

* `200 - Success`
* `404 - Not found`

### ISO 3166-1 alpha-2

<ul class="fa-ul">
  <li><i class="fa-li fa fa-book"></i><a href="https://dokumentasjon.felleskomponent.no/docs/iso_landkode">Information model for ISO 3166-1 alpha-2</a></li>
</ul>

#### Get all codes

> Get all codes 
 
```shell
$ curl "https://api.felleskomponent.no/felles/kodeverk/iso/31661alpha2"
```

> Result

```json
[
  {
    "systemId": {
      "identifikatorverdi": "AD"
    },
    "kode": "AD",
    "navn": "Andorra"
  },
  {
    "systemId": {
      "identifikatorverdi": "AE"
    },
    "kode": "AE",
    "navn": "De forente arabiske emirater"
  },
  {
    "systemId": {
      "identifikatorverdi": "AF"
    },
    "kode": "AF",
    "navn": "Afghanistan"
  },
  {...}
]
```

Endpoint to get all codes

***HTTP Request***

`GET https://api.felleskomponent.no/felles/kodeverk/iso/31661alpha2`

***HTTP Response***

* `200 - Success`
* `404 - Not found`

#### Get single code

> Get single code

```shell
$ curl "https://api.felleskomponent.no/felles/kodeverk/iso/31661alpha2/systemid/AD"
```

> Result

```json
{
  "systemId": {
    "identifikatorverdi": "AD"
  },
  "kode": "AD",
  "navn": "Andorra"
}
```

***HTTP Request***

`GET https://api.felleskomponent.no/felles/kodeverk/iso/31661alpha2/systemid/:id`

***HTTP Response***

* `200 - Success`
* `404 - Not found`

### ISO/IEC 5218

<ul class="fa-ul">
  <li><i class="fa-li fa fa-book"></i><a href="https://dokumentasjon.felleskomponent.no/docs/iso_kjonn">Information model for ISO/IEC 5218</a></li>
</ul>

#### Get all codes

> Get all codes 
 
```shell
$ curl "https://api.felleskomponent.no/felles/kodeverk/iso/5218"
```

> Result

```json
[
  {
    "systemId": {
      "identifikatorverdi": "0"
    },
    "kode": "0",
    "navn": "uvisst"
  },
  {
    "systemId": {
      "identifikatorverdi": "1"
    },
    "kode": "1",
    "navn": "mann"
  },
  {
    "systemId": {
      "identifikatorverdi": "2"
    },
    "kode": "2",
    "navn": "kvinne"
  },
  {
    "systemId": {
      "identifikatorverdi": "9"
    },
    "kode": "9",
    "navn": "gjelder ikke"
  }
]
```

Endpoint to get all codes

***HTTP Request***

`GET https://api.felleskomponent.no/felles/kodeverk/iso/5218`

***HTTP Response***

* `200 - Success`
* `404 - Not found`

#### Get single code

> Get single code

```shell
$ curl "https://api.felleskomponent.no/felles/kodeverk/iso/5218/systemid/1"
```

> Result

```json
{
  "systemId": {
    "identifikatorverdi": "1"
  },
  "kode": "1",
  "navn": "mann"
}
```

***HTTP Request***

`GET https://api.felleskomponent.no/felles/kodeverk/iso/5218/systemid/:id`

***HTTP Response***

* `200 - Success`
* `404 - Not found`
