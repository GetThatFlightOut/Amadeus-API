# Flight-API

## Table of Contents
  - [What it does](#what-it-does)
  - [How to Install Flight-API](#how-to-install-flight-api)
  - [Dependencies](#dependencies)
  - [Testing](#testing)
  - [Learning Goals](#learning-goals)
  - [Licenses](#licenses)
  - [Contact](#contact)
  - [Acknowledgments](#acknowledgments)
  
## What it does

This project is part of a Service-Oriented Architecture (SOA) application. The Flight-API serves as an intermediary, or microservice, from the Kiwi API and the GTFO-BE repo.

## How to Install Flight-API
## API Contract

The Flight API adheres to the standard JSON structure outlined on [jsonapi](#jsonapi.org).

- `GET /flights`: An example of a successful response body is as follows:
```
{:data=>
  [{:id=>"777",
    :type=>"flight",
    :attributes=>
     {:origin_city=>"Denver",
      :destination_city=>"Las Vegas",
      :origin_iata=>"DEN",
      :destination_iata=>"LAS",
      :latitude=>36.08,
      :longitude=>-115.15222,
      :price=>48,
      :departure_datetime=>
       "2021-01-30T16:18:00.000+00:00",
      :arrival_datetime=>
       "2021-01-30T17:19:00.000+00:00",
      :r_departure_datetime=>
       "2021-02-04T16:45:00.000+00:00",
      :r_arrival_datetime=>
       "2021-02-04T19:44:00.000+00:00",
      :booking_link=>
       "https://www.kiwi.com/deep?from=DEN&to=LAS&flightsId=0713244648e10000956fd20d_0%7C2446071348e60000bdad426d_0&price=40&passengers=1&affilid=picky&lang=en&currency=USD&booking_token=Bl1eEOekQmiUSdJPDhd8KsZsKxLkK2NMij2qwscBpXxiy-8M0wqdN84gJ22N7Vzz0XZ-VIuywxmaDjRSKDhXWuc0tH2KD-6hnWy5Ziwy_fQ2w-kf4X4AWTkJ0o_LUBr2CqwxKM6ktkn1c9sbKaQ43fXYfkcIaVtDlTxSpUJfeTato9hJNaFrCXFXs-GMbvPeKF-ksA15anp764WKIM54oedHG2ulK_OOcVmyl7ubD8C0s9m5E2IDaAdASAbpllQMXxpu2hKpJudVjCzErDR1hrh0g1fxZ2u3DyfJdJLQq0xuQ68OJj7xxPRXJ2ofAOOTFrRVUkQ7p09BdKNju138PifLQC2YknsSUQQPZuDFSinrqpJVkO8YVapsrDfZ1CxFPM_JhfXT27X16jNvRCjrckvwEKbPT9DRYgb0h4__WwnjcCxAqY3aaOhS-9H_gRFd49qiAknz13F40lWUIoZwQeoCRj7WCTbFT25rYTGZNLU8yvqkoDkeR2pzuBpto7PEGKqcBEDEuMHzt-B6OXSPVbphu1HLsJnrJguFL2Bq_PZV-ugdNsxIpe-v-DyiS0jubCvMQEeUac4_4_Ku6qa8Rj7HHex0NESs3Edrq_BuaYJIFPqVkx12_BTy_vdn6fvmnR-un5ecjkSCT4v12hd5h3WeObPc6jUA_9LcHQaHoSh8=",
      :trip_duration=>5,
      :id=>777}}]}
```
- `GET /flights`: An example of an unsuccessful response body is:
```
{:message=>
  [{:param=>"fly_from",
    :errors=>["Not recognized location: `ZZZ`"]}]}
```

The `GET /flights` endpoint requires several parameters for a successful response. The required parameters are:

  `:fly_from` - (string) - the IATA code of the origin airport
  
  `:date_from` - (string) - %d%m%y - the earliest date considered for departing flight
  
  `:date_to` - (string) - %d%m%y - the latest date considered for departing flight
  
  `:nights_in_dst_from` - (integer) - the minimum length of stay considered for the round trip
  
  `:nights_in_dst_to` - (integer) - the maximum length of stay considered for the round trip
  
  `:limit` - (integer) - the maximum number of results to be returned

  
- An example of valid required parameters is:
```
{:fly_from => 'DEN',
 :date_from => '30/01/2021',
 :date_to => '30/01/2021',
 :nights_in_dst_from => 5,
 :nights_in_dst_to => 5,
 :limit => 20
 }
```
## Dependencies
## Testing

* For testing our team implemented Travis CI with RSpec

> Travis CI is cloud based and when we submit a pull request, Travis will attempt to build our project and run the tests to ensure everything is working as expected. 

> RSpec is a tool for unit testing that will ensure we have the intended functionality at each level of our code. 

## Learning Goals

  * Consume external APIs
  
  * Build API's that return JSON responses
  
  * Refactor code for better code for improved organization/readability
  
  * Practice project management with project boards/daily standups/group retros
  
  * Utilize workflow: small commits, descriptive pull requests and code review
  
  * Write thorough and understandable documentation 
  
## Licenses

  * Ruby 2.5.3
  * Sinatra
  * Travis CI Enterprise
  
## Contact

#### Todd Estes: [LinkedIn](https://www.linkedin.com/in/toddwestes/), [Email](elestes@gmail.com), [GitHub](Todd-Estes)
 
#### Connor Ferguson: [LinkedIn](https://www.linkedin.com/in/connor-p-ferguson/), [Email](cpfergus1@gmail.com), [GitHub](cpfergus1)
 
#### George Soderholm: [LinkedIn](https://www.linkedin.com/in/george-soderholm-05776947/), [Email](georgesoderholm@gmail.com), [GitHub](GeorgieGirl24)
    
#### Sage Freeman-Gonzales: [LinkedIn](https://www.linkedin.com/in/sagefreemangonzales/), [Email](sagegonzales15@gmail.com), [GitHub](SageOfCode)
 
#### Sheryl Stillman: [LinkedIn](https://www.linkedin.com/in/sherylstillman1/), [Email](sheryl.stillman@gmail.com), [GitHub](stillsheryl)
    
#### Aidan Murray:  [LinkedIn] , [Email](aidanhansm@gmail.com), [GitHub](TeknoServal)
      
#### Jesse Mellinger: [LinkedIn](https://www.linkedin.com/in/jesse-mellinger/), [Email](jesse.m.mellinger@gmail.com), [GitHub](JesseMellinger)
        
#### Nick King: [LinkedIn](https://www.linkedin.com/in/nick-king-3128501ba/), [Email](nickmaxking@gmail.com), [GitHub](nmking22)
 
#### Brian Liu: [LinkedIn](https://www.linkedin.com/in/brian-liu-8356287b/), [Email](brian.b.liu@gmail.com), [GitHub](badgerbreezy)
    
#### Will Dunlap: [LinkedIn](https://www.linkedin.com/in/willwdunlap/), [Email](dunlapww@gmail.com), [GitHub](dunlapww)
   
   
 
## Acknowledgments
