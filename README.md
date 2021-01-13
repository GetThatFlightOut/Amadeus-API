# Flight-API
![image](https://user-images.githubusercontent.com/68172332/104384272-6d70f100-54ee-11eb-94ba-287258e83de7.png)

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

This project is part of a Service-Oriented Architecture (SOA) application that provides users with flight and weather information based on search parameters that the user provides. The Flight-API serves as an intermediary, or microservice, from the Kiwi API and the GTFO-BE repo. It retrieves data from the Kiwi API and packages it with only the information needed for the BE application, which in turn combines the data from both the Weather and Flight APIs to send a combincation of data from the two in one package for the front end.

To view the production site, please visit the [GTFO link](https://gtfo-fe.herokuapp.com/).

To view the other components of the application please visit the [Github Project Organization](https://github.com/GetThatFlightOut).

## How to Install Flight-API

```
git clone git@github.com:GetThatFlightOut/Flight-API.git
cd Flight-API
bundle install
shotgun
```

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

  * The parameters above would create the following url if you're using the 9393 port: http://localhost:9393/flights?fly_from=DEN&date_from=30/01/2021&date_to=30/01/2021&nights_in_dst_from=5&nights_in_dst_to=5&limit=20

- To explore documentation if you're interested in incorporating other endpoints, please reference the [Kiwi API docs](https://docs.kiwi.com/).

## Dependencies

* This microservice uses the [`fast_jsonapi`](https://github.com/Netflix/fast_jsonapi) gem, which is no longer being maintained.

## Testing

* For testing our team implemented [Travis CI](https://travis-ci.com/) with [RSpec](https://rspec.info/)

> Travis CI is cloud based and when we submit a pull request, Travis will attempt to build our project and run the tests to ensure everything is working as expected.

> RSpec is a tool for unit testing that will ensure we have the intended functionality at each level of our code.

* In order to run the tests, run `bundle exec rspec` in the command line and you should have all passing tests.

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

#### Todd Estes: [LinkedIn](https://www.linkedin.com/in/toddwestes/), [Email](mailto:elestes@gmail.com), [GitHub](https://github.com/Todd-Estes)

#### Connor Ferguson: [LinkedIn](https://www.linkedin.com/in/connor-p-ferguson/), [Email](mailto:cpfergus1@gmail.com), [GitHub](https://github.com/cpfergus1)

#### George Soderholm: [LinkedIn](https://www.linkedin.com/in/george-soderholm-05776947/), [Email](mailto:georgesoderholm@gmail.com), [GitHub](https://github.com/GeorgieGirl24)

#### Sage Freeman-Gonzales: [LinkedIn](https://www.linkedin.com/in/sagefreemangonzales/), [Email](mailto:sagegonzales15@gmail.com), [GitHub](https://github.com/SageOfCode)

#### Sheryl Stillman: [LinkedIn](https://www.linkedin.com/in/sherylstillman1/), [Email](mailto:sheryl.stillman@gmail.com), [GitHub](https://github.com/stillsheryl)

#### Aidan Murray:  [LinkedIn](http://www.linkedin.com/in/aidan-murray-teknoserval), [Email](mailto:aidanhansm@gmail.com), [GitHub](https://github.com/TeknoServal)

#### Jesse Mellinger: [LinkedIn](https://www.linkedin.com/in/jesse-mellinger/), [Email](mailto:jesse.m.mellinger@gmail.com), [GitHub](https://github.com/JesseMellinger)

#### Nick King: [LinkedIn](https://www.linkedin.com/in/nick-king-3128501ba/), [Email](mailto:nickmaxking@gmail.com), [GitHub](https://github.com/nmking22)

#### Brian Liu: [LinkedIn](https://www.linkedin.com/in/brian-liu-8356287b/), [Email](mailto:brian.b.liu@gmail.com), [GitHub](https://github.com/badgerbreezy)

#### Will Dunlap: [LinkedIn](https://www.linkedin.com/in/willwdunlap/), [Email](mailto:dunlapww@gmail.com), [GitHub](https://github.com/dunlapww)



## Acknowledgments
