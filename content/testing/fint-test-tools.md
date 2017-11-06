+++
title = "FINT Testverktøy"
description = "This page describes how to do technical tests of the adapter. These tests are ment for verifycation testing for the organisations."

+++


FINT felleskomponenter er tilgjengelige som `REST HATEOAS HAL` grensesnitt, som i bunn og grunn betyr `JSON-data` via `HTTP`.
Slik informasjon er i prinsippet mulig å se på i en nettleser, men fordi grensesnittet er `OAuth 2.0` beskyttet og behøver ekstra parametre i `HTTP` forespørselen, er verktøy å anbefale.

## Postman

FINT bruker hovedsakelig Postman ([https://www.getpostman.com](https://www.getpostman.com/)) for å utvikle tester, men de store datavolumene for noen av endepunktene gjør at Postman får ytelsesproblemer.

Test-collection for Postman er tilgjengelig her: 

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/2cb3e170570e30391865#?env%5BFINT%20Personal%20Test%20Suite.template%5D=W3siZW5hYmxlZCI6dHJ1ZSwia2V5Ijoib3JnSWQiLCJ2YWx1ZSI6IiIsInR5cGUiOiJ0ZXh0In0seyJlbmFibGVkIjp0cnVlLCJrZXkiOiJ0b2tlbiIsInZhbHVlIjoiIiwidHlwZSI6InRleHQifV0=)

Den behøver en Postman Environment som definerer følgende parametre:

| Parameter     | Beskrivelse             |
|---------------|-------------------------|
| org-id        | OrgId for å hente data  |
| client-id     | OAuth 2.0 Client ID     |
| client-secret | OAuth 2.0 Client Secret |
| refresh-token | OAuth 2.0 Refresh Token |

De tre første parametrene er tilgjengelige via `kundeportalen`. Refresh Token kan hentes ved å gjøre en OAuth 2.0 Token Request i Postman, eller ved hjelp av FINTs hjelpeverktøy fint-token som er beskrevet nedenfor.

>**Kundeportalen** er ikke tilgjengelig enda. Informasjonen fåes ved å kontakte FINTProsjektet.

Etter at collection er importert og environment satt opp, kan de forskjellige testene kjøres separat. Husk å kalle Refresh Access Token dersom det er mer enn en time siden siste forespørsel, da OAuth token har en times gyldighet.

Alle testene kan også kjøres under ett ved å åpne Runner-vinduet i Postman. Pass også her på å velge riktig collection og environment.


## FINT Test Client CLI

Dette er en Go kommandolinje-applikasjon som henter data fra en felleskomponent og skriver på fil. Denne anbefales for å hente ut alle data for en felleskomponent.

Applikasjonen finnes [her](https://github.com/FINTprosjektet/fint-test-client/releases). Verktøyet finnes både for `MacOS` og `Windows`.

Før applikasjonen startes, må filen `config.yml` opprettes på samme sted som programmet ligger.  Denne filen har følgende format:

```yml
orgid: AAAAA
auth:
    clientid: XXXXX
    clientsecret: YYYYY
    refreshtoken: ZZZZZ
```

Informasjonen er den samme som behøves for Postman.

Når dette er klart, kan den kjøres på følgende måte:

```shell
fint-test-client-windows.exe administrasjon/personal/arbeidsforhold arbeidsforhold.json
Requesting https://beta.felleskomponent.no/administrasjon/personal/arbeidsforhold ...
Response: 200
Wrote 13830622 bytes to arbeidsforhold.json
```

Deretter kan arbeidsforhold.json åpnes i en teksteditor.

>NB! På grunn av størrelsen (13 MB) anbefales Sublime Text eller en annen teksteditor som takler store filer effektivt.

## OAuth 2.0 Access Token

For tilgang til felleskomponenter kreves autentisering. Her brukes OAuth 2.0 tokens. FINT har utviklet et verktøy som kan brukes til å hente nytt token for testing.  Dette finnes [her](https://github.com/FINTprosjektet/fint-token/releases). Verktøyet finnes både for `MacOS` og `Windows`.

Før bruk må du ha tilgang til brukernavn, passord, client-id og client secret fra FINT adminportalen.

Verktøyet brukes slik:

```shell
fint-token-windows.exe -u BRUKERNAVN -p PASSORD -i CLIENT_ID -s SECRET
```

I terminalvinduet får du skrevet ut både et gyldig access token, og et refresh token.


