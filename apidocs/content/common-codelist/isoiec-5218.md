+++
date = "2017-04-26T11:49:04+02:00"
title = "Common Codelist"
weight = 33
+++

## ISO/IEC 5218

<ul class="fa-ul">
  <li><i class="fa-li fa fa-book"></i><a href="https://dokumentasjon.felleskomponent.no/docs/iso_kjonn">Information model for ISO/IEC 5218</a></li>
</ul>

### Get all codes

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

### Get single code

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
