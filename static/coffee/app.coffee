cities = [
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.974339,
                32.83036
            ]
        },
        "properties": {
            "name": "חיפה",
            "id": 1
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.655316,
                31.80438
            ]
        },
        "properties": {
            "name": "אשדוד",
            "id": 14
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.791464,
                31.252972
            ]
        },
        "properties": {
            "name": "באר שבע",
            "id": 8
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.907612,
                32.178194
            ]
        },
        "properties": {
            "name": "כפר סבא",
            "id": 5
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.824787,
                32.068423
            ]
        },
        "properties": {
            "name": "רמת גן",
            "id": 11
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.787386,
                32.015832
            ]
        },
        "properties": {
            "name": "חולון",
            "id": 1
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.777821,
                32.066157
            ]
        },
        "properties": {
            "name": "תל אביב-יפו",
            "id": 3
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.92088,
                32.442784
            ]
        },
        "properties": {
            "name": "חדרה",
            "id": 6
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.871328,
                32.18478
            ]
        },
        "properties": {
            "name": "רעננה",
            "id": 10
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.80705,
                31.961544
            ]
        },
        "properties": {
            "name": "ראשון לציון",
            "id": 7
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                35.213711,
                31.768318
            ]
        },
        "properties": {
            "name": "ירושלים",
            "id": 2
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.808873,
                32.072175
            ]
        },
        "properties": {
            "name": "גבעתיים",
            "id": 16
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.811274,
                31.89277199999999
            ]
        },
        "properties": {
            "name": "רחובות",
            "id": 15
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.887764,
                32.08404
            ]
        },
        "properties": {
            "name": "פתח תקווה",
            "id": 13
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.853197,
                32.321457
            ]
        },
        "properties": {
            "name": "נתניה",
            "id": 9
        }
    },
    {
        "geometry": {
            "type": "Point",
            "coordinates": [
                34.844677,
                32.162412
            ]
        },
        "properties": {
            "name": "הרצליה",
            "id": 12
        }
    }
]

$ ->
    map = mapbox.map('map')
    map.addTileLayer(mapbox.layer().id('idan.map-468vpvim'))
    cityMarkerLayer = mapbox.markers.layer()
        .features(cities)
        .key((f) ->
            return f.properties.id
        )
    map.addLayer(cityMarkerLayer)
    map.ui.zoomer.add()
    map.addCallback('drawn', (map) ->
        console.log(map.getExtent())
    )
    map.setExtent(cityMarkerLayer.extent())

