require 'spec_helper'
require 'json'

def app
  Flight
end

describe 'I can create a Flight PORO object with attributes based off of JSON' do
  it 'exists' do
    json = {
            "id": "07130a8948d20000e87d9eb0_0|0a89071348d7000042a614ce_0",
            "dTime": 1610734380,
            "dTimeUTC": 1610759580,
            "aTime": 1610746560,
            "aTimeUTC": 1610768160,
            "nightsInDest": 5,
            "duration": {
                "departure": 8580,
                "return": 10440,
                "total": 19020
            },
            "fly_duration": "2h 23m",
            "flyFrom": "DEN",
            "cityFrom": "Denver",
            "cityCodeFrom": "DEN",
            "countryFrom": {
                "code": "US",
                "name": "United States"
            },
            "mapIdfrom": "denver_co_us",
            "flyTo": "ORD",
            "cityTo": "Chicago",
            "cityCodeTo": "CHI",
            "countryTo": {
                "code": "US",
                "name": "United States"
            },
            "mapIdto": "chicago_il_us",
            "distance": 1427.6,
            "routes": [
                [
                    "DEN",
                    "ORD"
                ],
                [
                    "ORD",
                    "DEN"
                ]
            ],
            "airlines": [
                "F9"
            ],
            "pnr_count": 2,
            "has_airport_change": false,
            "technical_stops": 0,
            "price": 48,
            "bags_price": {
                "1": 72.02,
                "2": 156.75
            },
            "baglimit": {
                "hand_width": 25,
                "hand_height": 40,
                "hand_length": 60,
                "hand_weight": 15,
                "hold_width": 28,
                "hold_height": 52,
                "hold_length": 78,
                "hold_dimensions_sum": 158,
                "hold_weight": 22
            },
            "availability": {
                "seats": 7
            },
            "facilitated_booking_available": true,
            "conversion": {
                "USD": 48,
                "EUR": 40
            },
            "quality": 106.266501,
            "booking_token": "BJSEOH5A0aD_dpm7GDNzZcKsxCePkFiIeA3I67E3o0FfIf4AawVHF6j7J2hfcujqn5W2SBo8F0hnQwu7gx7CM5vD0C-PMaKYvwUVdf1MAG5PqAuaLMlGDQlx3M65BgvcYHkPJ64ROs4lxuUDIM1pKX8FQccJ0wgp6_kQaTt2hu4-XikSAJq2nuprA9PoYzNpxOWW2E1_MRCYgh1IQbac5aQrRZBUReJQSvnuJgpjkLrBl7ttHT4IDqIkgFv7-YYt3mupxw5sGIf037PwheKT34YV5WWDvTYVWMS-mpNHqcMvfRDzyVqoMDrfbxZLw-iB5FPVWKS_Hw_C2y134bCff_QcSdCbdVK5RBeTL-6hVENmSFImsR3w3mtMP6dd9voC1-lEq4rab8GByfRdj_L7hi_TVKxg74CRetuMvbhPwZ7pjIz2ohZScxS-42Ty86nL2r6xkQpzvVH4dl0aXAJoAB8Rl6vUk1u06LZZi7gLW7joaHk4YQ6Fmc0bl7hBmgPS7Lri0TH2txOenPguN0IpUAJXglIL_-0IpjDNjh0OsQLHtagiIxECOQCVHi2M9ptf3Rb-kSg1g9RmEJqD5uTMVSqrMlLVWQEmf8iBFdrGaVli1lJgJxlT-akE1eeTk9ErCy49H14VNiRhWqlErFQ0ojBQ9tcYtlM9Bn12q05oVVwI=",
            "deep_link": "https://www.kiwi.com/deep?from=DEN&to=ORD&flightsId=07130a8948d20000e87d9eb0_0%7C0a89071348d7000042a614ce_0&price=40&passengers=1&affilid=picky&lang=en&currency=USD&booking_token=BJSEOH5A0aD_dpm7GDNzZcKsxCePkFiIeA3I67E3o0FfIf4AawVHF6j7J2hfcujqn5W2SBo8F0hnQwu7gx7CM5vD0C-PMaKYvwUVdf1MAG5PqAuaLMlGDQlx3M65BgvcYHkPJ64ROs4lxuUDIM1pKX8FQccJ0wgp6_kQaTt2hu4-XikSAJq2nuprA9PoYzNpxOWW2E1_MRCYgh1IQbac5aQrRZBUReJQSvnuJgpjkLrBl7ttHT4IDqIkgFv7-YYt3mupxw5sGIf037PwheKT34YV5WWDvTYVWMS-mpNHqcMvfRDzyVqoMDrfbxZLw-iB5FPVWKS_Hw_C2y134bCff_QcSdCbdVK5RBeTL-6hVENmSFImsR3w3mtMP6dd9voC1-lEq4rab8GByfRdj_L7hi_TVKxg74CRetuMvbhPwZ7pjIz2ohZScxS-42Ty86nL2r6xkQpzvVH4dl0aXAJoAB8Rl6vUk1u06LZZi7gLW7joaHk4YQ6Fmc0bl7hBmgPS7Lri0TH2txOenPguN0IpUAJXglIL_-0IpjDNjh0OsQLHtagiIxECOQCVHi2M9ptf3Rb-kSg1g9RmEJqD5uTMVSqrMlLVWQEmf8iBFdrGaVli1lJgJxlT-akE1eeTk9ErCy49H14VNiRhWqlErFQ0ojBQ9tcYtlM9Bn12q05oVVwI=",
            "tracking_pixel": nil,
            "p1": 1,
            "p2": 1,
            "p3": 1,
            "transfers": [],
            "type_flights": [
                "deprecated"
            ],
            "return_duration": "2h 54m",
            "hidden_city_ticketing": false,
            "virtual_interlining": true,
            "route": [
                {
                    "fare_basis": "K03PXS2",
                    "fare_category": "M",
                    "fare_classes": "K",
                    "price": 1,
                    "fare_family": "",
                    "found_on": "deprecated",
                    "last_seen": 1609913953,
                    "refresh_timestamp": 1609913953,
                    "source": "deprecated",
                    "return": 0,
                    "bags_recheck_required": false,
                    "guarantee": false,
                    "id": "07130a8948d20000e87d9eb0_0",
                    "combination_id": "07130a8948d20000e87d9eb0",
                    "original_return": 0,
                    "aTime": 1610746560,
                    "dTime": 1610734380,
                    "aTimeUTC": 1610768160,
                    "dTimeUTC": 1610759580,
                    "mapIdfrom": "denver_co_us",
                    "mapIdto": "chicago_il_us",
                    "cityTo": "Chicago",
                    "cityFrom": "Denver",
                    "cityCodeFrom": "DEN",
                    "cityCodeTo": "CHI",
                    "flyTo": "ORD",
                    "flyFrom": "DEN",
                    "airline": "F9",
                    "operating_carrier": "F9",
                    "equipment": nil,
                    "latFrom": 39.8616667,
                    "lngFrom": -104.67306,
                    "latTo": 41.9786111,
                    "lngTo": -87.904722,
                    "flight_no": 410,
                    "vehicle_type": "aircraft",
                    "operating_flight_no": "410"
                },
                {
                    "fare_basis": "K03PXS2",
                    "fare_category": "M",
                    "fare_classes": "K",
                    "price": 1,
                    "fare_family": "",
                    "found_on": "deprecated",
                    "last_seen": 1609913952,
                    "refresh_timestamp": 1609913952,
                    "source": "deprecated",
                    "return": 1,
                    "bags_recheck_required": false,
                    "guarantee": false,
                    "id": "0a89071348d7000042a614ce_0",
                    "combination_id": "0a89071348d7000042a614ce",
                    "original_return": 0,
                    "aTime": 1611137040,
                    "dTime": 1611130200,
                    "aTimeUTC": 1611162240,
                    "dTimeUTC": 1611151800,
                    "mapIdfrom": "chicago_il_us",
                    "mapIdto": "denver_co_us",
                    "cityTo": "Denver",
                    "cityFrom": "Chicago",
                    "cityCodeFrom": "CHI",
                    "cityCodeTo": "DEN",
                    "flyTo": "DEN",
                    "flyFrom": "ORD",
                    "airline": "F9",
                    "operating_carrier": "F9",
                    "equipment": nil,
                    "latFrom": 41.9786111,
                    "lngFrom": -87.904722,
                    "latTo": 39.8616667,
                    "lngTo": -104.67306,
                    "flight_no": 411,
                    "vehicle_type": "aircraft",
                    "operating_flight_no": "411"
                  }
                ]
              }

    flight = Flight.new(json)

    expect(flight).to be_a Flight
    expect(flight.origin_city).to eq("Denver")
    expect(flight.destination_iata).to eq("ORD")
    expect(flight.latitude).to eq(41.9786111)
    expect(flight.price).to eq(48)
    expect(flight.booking_link).to eq("https://www.kiwi.com/deep?from=DEN&to=ORD&flightsId=07130a8948d20000e87d9eb0_0%7C0a89071348d7000042a614ce_0&price=40&passengers=1&affilid=picky&lang=en&currency=USD&booking_token=BJSEOH5A0aD_dpm7GDNzZcKsxCePkFiIeA3I67E3o0FfIf4AawVHF6j7J2hfcujqn5W2SBo8F0hnQwu7gx7CM5vD0C-PMaKYvwUVdf1MAG5PqAuaLMlGDQlx3M65BgvcYHkPJ64ROs4lxuUDIM1pKX8FQccJ0wgp6_kQaTt2hu4-XikSAJq2nuprA9PoYzNpxOWW2E1_MRCYgh1IQbac5aQrRZBUReJQSvnuJgpjkLrBl7ttHT4IDqIkgFv7-YYt3mupxw5sGIf037PwheKT34YV5WWDvTYVWMS-mpNHqcMvfRDzyVqoMDrfbxZLw-iB5FPVWKS_Hw_C2y134bCff_QcSdCbdVK5RBeTL-6hVENmSFImsR3w3mtMP6dd9voC1-lEq4rab8GByfRdj_L7hi_TVKxg74CRetuMvbhPwZ7pjIz2ohZScxS-42Ty86nL2r6xkQpzvVH4dl0aXAJoAB8Rl6vUk1u06LZZi7gLW7joaHk4YQ6Fmc0bl7hBmgPS7Lri0TH2txOenPguN0IpUAJXglIL_-0IpjDNjh0OsQLHtagiIxECOQCVHi2M9ptf3Rb-kSg1g9RmEJqD5uTMVSqrMlLVWQEmf8iBFdrGaVli1lJgJxlT-akE1eeTk9ErCy49H14VNiRhWqlErFQ0ojBQ9tcYtlM9Bn12q05oVVwI=")
    expect(flight.departure_datetime).to eq('Fri, 15 Jan 2021 18:13:00 +0000')
  end
end
