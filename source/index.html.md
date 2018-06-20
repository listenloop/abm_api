---
title: API Reference


toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/lord/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the ListenLoop API! You can use our API to access ListenLoop API endpoints.

# Authentication

> To authorize, use this code:

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
```

> Make sure to replace `YOUR_API_KEY` and `YOUR_EMAIL` with your API key & email accordingly.

ListenLoop uses API keys to allow access to the API. You can get your API key at your [organization page](http://v2.listenloop.com/#/organization).

ListenLoop expects for the API key and email to be included in all API requests to the server in a header that looks like the following:

`X-User-Token: YOUR_API_KEY`

`X-User-Email: YOUR_EMAIL`

<aside class="notice">
You must replace <code>YOUR_API_KEY</code> with your personal API key.
</aside>
<aside class="notice">
You must replace <code>YOUR_EMAIL</code> with your email.
</aside>

# Campaigns

## Create

```shell
curl "http://v2.listenloop.com/campaigns"
  -X POST
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
  -H "Content-Type: application/json"
  -d '{ "campaign": { "name": "My Awesome Campaign"}}'
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "name": "My Awesome Campaign",
  "organization_id": 1,
  "user_defined_status": "active",
  "archived_at": null,
  "worthy_of_dsp": false,
  "worthy_of_dsp_description": "No destination Url",
  "destination_url": null,
  "accounts_count": null,
  "accounts_with_impression_count": null,
  "last_user_stopped_at": null,
  "start_date": null,
  "end_date": null,
  "daily_budget": "15.0",
  "bw_lifetime_budget": "10000.0",
  "user_defined_aggressiveness": null,
  "user_defined_cpm": "25.0",
  "created_at": "2018-06-20T06:57:50.906-04:00",
  "updated_at": "2018-06-20T06:57:50.906-04:00",
  "frequency_cap_impressions": 20,
  "frequency_cap_duration": 3600,
  "billing_type": "monthly_recurring",
  "worthy_of_wpe": false,
  "worthy_of_wpe_description": null,
  "wizard_type": null,
  "ctc_enabled": false,
  "targeting_strategy": {
    "geo": true,
    "industries": true,
    "job_titles": true
  },
  "bidding_strategy": "CPM",
  "pacing": "daily",
  "ecpc_target": "0.02",
  "max_bid": "0.02",
  "clicks_count": null,
  "impressions_count": null,
  "turned_on_accounts_count": 0,
  "ctr": null,
  "page_views_count": null,
  "personalization_c_page_views_count": null,
  "conversion_c_page_views_count": null,
  "conversion_rate": null,
  "salesforce_lists": [],
  "organization": {
    "id": 1,
    "campaigns": [1]
  },
  "job_titles": [],
  "personalization_criteria": [],
  "conversion_criteria": [],
  "inventories": [],
  "geo_optimizations": [],
  "day_partings": [
    {
      "id": 27,
      "day": "sunday",
      "from_hour": 4,
      "to_hour": 20
    },
    {
      "id": 28,
      "day": "monday",
      "from_hour": 4,
      "to_hour": 20
    },
    {
      "id": 29,
      "day": "tuesday",
      "from_hour": 4,
      "to_hour": 20
    },
    {
      "id": 30,
      "day": "wednesday",
      "from_hour": 4,
      "to_hour": 20
    },
    {
      "id": 31,
      "day": "thursday",
      "from_hour": 4,
      "to_hour": 20
    },
    {
      "id": 32,
      "day": "friday",
      "from_hour": 4,
      "to_hour": 20
    },
    {
      "id": 33,
      "day": "saturday",
      "from_hour": 4,
      "to_hour": 20
    }
  ],
  "device_types": [],
  "carriers": [],
  "targetable_accounts_count": 0
}
```

This endpoint creates campaign.

### HTTP Request

`POST http://v2.listenloop.com/campaigns`

### Query Parameters

| Parameter | Default | Description                   |
| --------- | ------- | ----------------------------- |
| campaign  |         | Contains campaign attributes. |

### Campaign Attributes

| Parameter                   | Default | Description                                                                                                         |
| --------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------- |
| name                        |         | Campaign name.                                                                                                      |
| user_defined_status         | active  | Campaign status. Choices: "active", "paused", "archived".                                                           |
| destination_url             |         | Destination URL for people who click your ad.                                                                       |
| daily_budget                | 15.0    | Daily max spend budget.                                                                                             |
| start_date                  |         | Start campaing date.                                                                                                |
| end_date                    |         | End campaign date.                                                                                                  |
| ctc_enabled                 |         | Is Clickers to Contacts feature enabled.                                                                            |
| bw_lifetime_budget          | 10000.0 | Campaign entire life budget.                                                                                        |
| user_defined_cpm            | 25.0    | Campaign CPM bid.                                                                                                   |
| bidding_strategy            | CPM     | Campaign bidding strategy. Choices: "CPM", "CPM_PACED", "CPM_OPTIMIZED", "CPC".                                     |
| pacing                      | daily   | Campaign pacing type. Choices: "daily", "lifetime".                                                                 |
| ecpc_target                 | 0.02    | Campaign eCPC target.                                                                                               |
| max_bid                     | 0.02    | Campaign max CPM bid.                                                                                               |
| frequency_cap_impressions   | 20      | Campaign frequency cap.                                                                                             |
| frequency_cap_duration      | 3600    | Campaign frequency cap duration.                                                                                    |
| user_defined_aggressiveness |         | Campaign aggressiveness.                                                                                            |
| targeting_strategy          |         | JSON object with attributes "industries", "job_titles", "ip_addresses" , "geo". Mark necessary attributes as 'true' |

## Edit Campaign

```shell
curl "http://v2.listenloop.com/campaigns/1"
  -X PUT
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
  -H "Content-Type: application/json"
  -d '{ "campaign": { "destination_url": "listenloop.com"}}'
```

> The above command returns JSON structured like this:

```json
{
  "organization_id": 1,
  "id": 1,
  "destination_url": "http://listenloop.com",
  "worthy_of_dsp": true,
  "user_defined_aggressiveness": null,
  "end_date": null,
  "start_date": null,
  "daily_budget": "15.0",
  "pacing": "daily",
  "bidding_strategy": "CPM",
  "worthy_of_dsp_description": "",
  "name": "API_CAMPAIGN",
  "user_defined_status": "active",
  "archived_at": null,
  "accounts_count": null,
  "accounts_with_impression_count": null,
  "last_user_stopped_at": null,
  "bw_lifetime_budget": "10000.0",
  "user_defined_cpm": "25.0",
  "created_at": "2018-06-20T06:57:50.906-04:00",
  "updated_at": "2018-06-20T09:12:00.966-04:00",
  "frequency_cap_impressions": 20,
  "frequency_cap_duration": 3600,
  "billing_type": "monthly_recurring",
  "worthy_of_wpe": false,
  "worthy_of_wpe_description": null,
  "wizard_type": null,
  "ctc_enabled": false,
  "targeting_strategy": { 
    "geo": true, 
    "industries": true, 
    "job_titles": true 
  },
  "ecpc_target": "0.02",
  "max_bid": "0.02",
  "clicks_count": null,
  "impressions_count": null,
  "turned_on_accounts_count": 0,
  "ctr": null,
  "page_views_count": null,
  "personalization_c_page_views_count": null,
  "conversion_c_page_views_count": null,
  "conversion_rate": null,
  "salesforce_lists": [],
  "organization": {
    "id": 1,
    "campaigns": [1]
  },
  "job_titles": [],
  "personalization_criteria": [],
  "conversion_criteria": [],
  "inventories": [],
  "geo_optimizations": [],
  "day_partings": [
    { "id": 27, "day": "sunday", "from_hour": 4, "to_hour": 20 },
    { "id": 28, "day": "monday", "from_hour": 4, "to_hour": 20 },
    { "id": 29, "day": "tuesday", "from_hour": 4, "to_hour": 20 },
    { "id": 30, "day": "wednesday", "from_hour": 4, "to_hour": 20 },
    { "id": 31, "day": "thursday", "from_hour": 4, "to_hour": 20 },
    { "id": 32, "day": "friday", "from_hour": 4, "to_hour": 20 },
    { "id": 33, "day": "saturday", "from_hour": 4, "to_hour": 20 }
  ],
  "device_types": [],
  "carriers": [],
  "targetable_accounts_count": 0
}
```

This endpoint edits a specific campaign.

### HTTP Request

`PUT http://v2.listenloop.com/campaigns/<ID>`

### URL Parameters

| Parameter | Description                      |
| --------- | -------------------------------- |
| ID        | The ID of the campaign to update |

### Query Parameters

| Parameter | Default | Description                   |
| --------- | ------- | ----------------------------- |
| campaign  |         | Contains campaign attributes. |


### Campaign Attributes

| Parameter                   | Default | Description                                                                                                         |
| --------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------- |
| name                        |         | Campaign name.                                                                                                      |
| user_defined_status         | active  | Campaign status. Choices: "active", "paused", "archived".                                                           |
| destination_url             |         | Destination URL for people who click your ad.                                                                       |
| daily_budget                | 15.0    | Daily max spend budget.                                                                                             |
| start_date                  |         | Start campaing date.                                                                                                |
| end_date                    |         | End campaign date.                                                                                                  |
| ctc_enabled                 |         | Is Clickers to Contacts feature enabled.                                                                            |
| bw_lifetime_budget          | 10000.0 | Campaign entire life budget.                                                                                        |
| user_defined_cpm            | 25.0    | Campaign CPM bid.                                                                                                   |
| bidding_strategy            | CPM     | Campaign bidding strategy. Choices: "CPM", "CPM_PACED", "CPM_OPTIMIZED", "CPC".                                     |
| pacing                      | daily   | Campaign pacing type. Choices: "daily", "lifetime".                                                                 |
| ecpc_target                 | 0.02    | Campaign eCPC target.                                                                                               |
| max_bid                     | 0.02    | Campaign max CPM bid.                                                                                               |
| frequency_cap_impressions   | 20      | Campaign frequency cap.                                                                                             |
| frequency_cap_duration      | 3600    | Campaign frequency cap duration.                                                                                    |
| user_defined_aggressiveness |         | Campaign aggressiveness.                                                                                            |
| targeting_strategy          |         | JSON object with attributes "industries", "job_titles", "ip_addresses" , "geo". Mark necessary attributes as 'true' |

## Show Campaign

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get(2)
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.get(2)
```

```shell
curl "http://example.com/api/kittens/2"
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require("kittn");

let api = kittn.authorize("meowmeowmeow");
let max = api.kittens.get(2);
```

> The above command returns JSON structured like this:

```json
{
  "id": 2,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/kittens/<ID>`

### URL Parameters

| Parameter | Description                      |
| --------- | -------------------------------- |
| ID        | The ID of the kitten to retrieve |
