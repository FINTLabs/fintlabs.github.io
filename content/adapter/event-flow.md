+++
title = "Adapter Update Event Flow"
description = "How information is exchanged between FINT APIs and adapters in the form of events."
weight = 3
+++

# FINT Adapter Event Flow for Updates

The general flow between FINT and adapters are:

1. Adapter subscribes to events using the SSE endpoint
1. FINT delivers events on the SSE stream
1. Adapter accepts the event by POSTing to the status endpoint.  There is a 2-minute timeout on accepting events. If you use the adapter skeleton this is already handled.
1. Adapter responds to the event by POSTing to the response endpoint.  There is a 15-minute timeout on responding to events.

FINT components produce events for two reasons:
- Periodic cache update events every 15 minutes, triggering `GET_ALL_*` events.
- Incoming POST / PUT requests from clients.  Every request produces exactly one event.

FINT expects one status and one response to every event delivered.  Multiple responses will be rejected with `410 GONE`

Every event has an `Operation` attribute indicating the kind of event.

Periodic cache update events produce `READ` operations.
PUT requests produce `UPDATE` operations
POST requests produce `CREATE` operations unless the validate request parameter is set.
POST with the validate request parameter set creates `VALIDATE` operations.

The intended behavior for these operations is as follows:
- `VALIDATE`: Data validation
- `CREATE`: Data creation
- `READ`: Data request
- `UPDATE`: Data modification, modifying existing data
- `DELETE`: Data deletion, removing existing data

For `VALIDATE` operations, no information should be stored or modified. 
It is intended for semantic validation only.
Validation is requested by the client by POSTing the same payload that it intends to submit, but with the `?validate=true` request parameter.
This changes the metadata of the event sent to the adapter.
The adapter is supposed to perform validation, and respond with `ACCEPTED`, `REJECTED`, `ERROR` or `CONFLICT`, but not store the content.
There is also no need to return any payload in the response event, as it will be ignored.

To store the information after validation, the POST needs to be repeated without the validate flag.
This is a new event delivered to the adapter.
The validation event and the subsequent `CREATE` event are treated independently.

When adapters respond to events, the ResponseStatus attribute indicates the result of the event.  

The response payload is handled according to the following, depending on ResponseStatus:

- `ACCEPTED`: The payload is added to the cache
- `REJECTED`: The payload is ignored.
- `ERROR`: The payload is ignored.
- `CONFLICT`: The payload is added to the cache.

Note the last clause.  For CONFLICT the adapter is supposed to deliver the most recent version of the information, so clients and the FINT cache can be updated.

