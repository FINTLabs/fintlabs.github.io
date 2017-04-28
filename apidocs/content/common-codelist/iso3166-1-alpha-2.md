+++
date = "2017-04-26T11:49:04+02:00"
title = "ISO 3166-1 alpha-2"
weight = 32
+++

## ISO 3166-1 alpha-2

<ul class="fa-ul">
  <li><i class="fa-li fa fa-book"></i><a href="https://dokumentasjon.felleskomponent.no/docs/iso_landkode">Information model for ISO 3166-1 alpha-2</a></li>
</ul>

### Get all codes

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

### Get single code

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