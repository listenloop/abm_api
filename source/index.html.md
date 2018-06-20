---
title: API Reference

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

## Sign in

```shell
curl "http://abm2.listenloop.com/users/sign_in"
  -X POST
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
  -H "Accept: application/json"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "email": "email@example.com",
  "authentication_token": "YOUR_API_KEY",
  "first_name": "",
  "last_name": "",
  "organization_id": 1,
  "creator": true,
  "reset_password_token": null,
  "reset_password_sent_at": null,
  "remember_created_at": null,
  "sign_in_count": 2,
  "current_sign_in_at": "2018-04-18T04:28:36.058-04:00",
  "last_sign_in_at": "2018-04-18T04:28:09.068-04:00",
  "current_sign_in_ip": {
    "family": 2,
    "addr": 2130706433,
    "mask_addr": 4294967295
  },
  "last_sign_in_ip": {
    "family": 2,
    "addr": 2130706433,
    "mask_addr": 4294967295
  },
  "created_at": "2018-04-18T04:28:09.062-04:00",
  "updated_at": "2018-04-18T04:28:36.062-04:00",
  "organization": {
    "id": 1,
    "user_defined_status": "active",
    "last_paused_at": null,
    "worthy_of_dsp": false,
    "worthy_of_dsp_description": null,
    "credits": "0.0",
    "charge_software_fee": false,
    "last_started_processing_at": null,
    "last_successfully_processed_at": null,
    "campaigns_count": null,
    "team_members_count": null,
    "payment_method": null,
    "auto_refill": true,
    "created_at": "2018-04-18T04:28:08.932-04:00",
    "updated_at": "2018-04-18T04:28:08.932-04:00",
    "last_archived_at": null,
    "public_key": "PUBLIC_KEY",
    "ip_lookup_credits_allotted": 500,
    "ip_lookup_credits_used": 0,
    "update_bw_blocked_domain_list": true,
    "trial_days": 14,
    "next_charge_date": "2018-05-02T00:00:00.000-04:00",
    "last_charged_at_date": null,
    "fee_per_account": null,
    "ctc_enabled": false,
    "loop_js_added": false,
    "rate_limiting": { "page_view": 100 },
    "min_charge_amount": "500.0",
    "creator_email": "email@example.com",
    "logo_url": null,
    "name": null,
    "domain": null,
    "organization_basics": [],
    "users": [
      {
        "id": 1,
        "email": "email@example.com",
        "last_sign_in_at": "2018-04-18T04:28:09.068-04:00",
        "creator": true
      }
    ],
    "campaigns": [],
    "payment_information": null,
    "salesforce": null,
    "payment_transactions": [],
    "lastSavedWizardProgress": {
      "status": true,
      "exception": null,
      "message": null,
      "data": {},
      "errors": []
    },
    "organization_brand_safety_segments": [],
    "beeswax_advertiser": null
  }
}
```

This endpoint shows you user info.

### HTTP Request

`POST http://abm2.listenloop.com/users/sign_in`

# Campaigns

## Create

```shell
curl "http://abm2.listenloop.com/campaigns"
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

`POST http://abm2.listenloop.com/campaigns`

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
curl "http://abm2.listenloop.com/campaigns/1"
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

`PUT http://abm2.listenloop.com/campaigns/<ID>`

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

```shell
curl "http://abm2.listenloop.com/campaigns/1"
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
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

This endpoint retrieves a specific campaign.

### HTTP Request

`GET http://abm2.listenloop.com/campaigns/<ID>`

### URL Parameters

| Parameter | Description                        |
| --------- | ---------------------------------- |
| ID        | The ID of the campaign to retrieve |

# Accounts

## Add List

```shell
curl "http://abm2.listenloop.com/campaigns/1/accounts/add_list"
  -X POST
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
  -H "Content-Type: application/json"
  -d '{ "account_list": [ {"companyName": "Example", "domainName": "www.example.com"} ] }'
```

This endpoint adds lits of accounts.

### HTTP Request

`POST http://abm2.listenloop.com/campaigns/<ID>/accounts/add_list`

### URL Parameters

| Parameter | Description                                 |
| --------- | ------------------------------------------- |
| ID        | The ID of the campaign containing accounts. |

### Query Parameters

| Parameter    | Default | Description               |
| ------------ | ------- | ------------------------- |
| account_list |         | Array of accounts to add. |

### Campaign Attributes

| Parameter   | Default | Description         |
| ----------- | ------- | ------------------- |
| domainName  |         | Account domain      |
| companyName |         | Account name        |
| zipCode     |         | Account postal code |
| wpeText1    |         | WPE custom text #1  |
| wpeText2    |         | WPE custom text #2  |
| wpeText3    |         | WPE custom text #3  |
| wpeText4    |         | WPE custom text #4  |
| wpeText5    |         | WPE custom text #5  |

## Create

```shell
curl "http://abm2.listenloop.com/campaigns/1/accounts"
  -X POST
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
  -H "Content-Type: application/json"
  -d '{ "account": { "name": "Example", "domain": "example.com" }}'
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "account_id": 1,
  "name": "Example",
  "domain": "example.com",
  "source": "user",
  "created_at": "2018-06-20T09:53:36.885-04:00",
  "updated_at": "2018-06-20T09:53:36.885-04:00",
  "user_defined_status": "active",
  "worthy_of_dsp": false,
  "worthy_of_dsp_description": null,
  "targeting_update_needed": false,
  "last_user_paused_at": null,
  "setup_third_party_last_ran_at": null,
  "campaign_id": 1,
  "wpe_text_1": null,
  "wpe_text_2": null,
  "wpe_text_3": null,
  "wpe_text_4": null,
  "wpe_text_5": null,
  "ip_addresses_count": 0,
  "kick_fire_lookup_status": "pending",
  "last_kick_fire_looked_up_at": null,
  "logo_url": null,
  "account_locations": [],
  "account_industries": [],
  "campaign": { "id": 1 },
  "beeswax_line_item": null
}
```

This endpoint creates account.

### HTTP Request

`POST http://abm2.listenloop.com/campaigns/<ID>/accounts`

### URL Parameters

| Parameter | Description                                 |
| --------- | ------------------------------------------- |
| ID        | The ID of the campaign containing accounts. |

### Query Parameters

| Parameter | Default | Description                  |
| --------- | ------- | ---------------------------- |
| account   |         | Contains account attributes. |

### Account Attributes

| Parameter           | Default | Description                                              |
| ------------------- | ------- | -------------------------------------------------------- |
| name                |         | Account name.                                            |
| domain              |         | Account domain.                                          |
| user_defined_status |         | Account status. Choices: "active", "paused", "archived". |

## Edit

```shell
curl "http://abm2.listenloop.com/campaigns/1/accounts/1"
  -X PUT
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
  -H "Content-Type: application/json"
  -d '{ "account": { "user_defined_status": "paused" }}'
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "account_id": 1,
  "name": "Example",
  "domain": "example.com",
  "source": "user",
  "created_at": "2018-06-20T09:53:36.885-04:00",
  "updated_at": "2018-06-20T10:15:09.915-04:00",
  "campaign_id": 1,
  "user_defined_status": "paused",
  "worthy_of_dsp": false,
  "worthy_of_dsp_description": null,
  "targeting_update_needed": false,
  "last_user_paused_at": null,
  "setup_third_party_last_ran_at": null,
  "wpe_text_1": null,
  "wpe_text_2": null,
  "wpe_text_3": null,
  "wpe_text_4": null,
  "wpe_text_5": null,
  "ip_addresses_count": 0,
  "kick_fire_lookup_status": "pending",
  "last_kick_fire_looked_up_at": null,
  "logo_url": null,
  "account_locations": [],
  "account_industries": [],
  "campaign": { "id": 1 },
  "beeswax_line_item": null
}
```

This endpoint edits account.

### HTTP Request

`PUT http://abm2.listenloop.com/campaigns/<CID>/accounts/<ID>`

### URL Parameters

| Parameter | Description                                 |
| --------- | ------------------------------------------- |
| CID       | The ID of the campaign containing accounts. |
| ID        | The ID of the account.                      |

### Query Parameters

| Parameter | Default | Description                  |
| --------- | ------- | ---------------------------- |
| account   |         | Contains account attributes. |

### Account Attributes

| Parameter           | Default | Description                                              |
| ------------------- | ------- | -------------------------------------------------------- |
| name                |         | Account name                                             |
| domain              |         | Account domain                                           |
| user_defined_status |         | Account status. Choices: "active", "paused", "archived". |

## Show

```shell
curl "http://abm2.listenloop.com/campaigns/1/accounts/1"
  -H "X-User-Token: YOUR_API_KEY"
  -H "X-User-Email: YOUR_EMAIL"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "account_id": 1,
  "name": "Example",
  "domain": "example.com",
  "source": "user",
  "created_at": "2018-06-20T09:53:36.885-04:00",
  "updated_at": "2018-06-20T10:15:09.915-04:00",
  "user_defined_status": "paused",
  "worthy_of_dsp": false,
  "worthy_of_dsp_description": null,
  "targeting_update_needed": false,
  "last_user_paused_at": null,
  "setup_third_party_last_ran_at": null,
  "campaign_id": 1,
  "wpe_text_1": null,
  "wpe_text_2": null,
  "wpe_text_3": null,
  "wpe_text_4": null,
  "wpe_text_5": null,
  "ip_addresses_count": 0,
  "kick_fire_lookup_status": "pending",
  "last_kick_fire_looked_up_at": null,
  "logo_url": null,
  "account_locations": [],
  "account_industries": [],
  "campaign": { "id": 1 },
  "beeswax_line_item": null
}
```

This endpoint retrieves a specific account.

### HTTP Request

`GET http://abm2.listenloop.com/campaigns/<CID>/accounts/<ID>`

### URL Parameters

| Parameter | Description                                 |
| --------- | ------------------------------------------- |
| CID       | The ID of the campaign containing accounts. |
| ID        | The ID of the account.                      |
