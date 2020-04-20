
db.customers.aggregate(
    [
        {
            '$lookup': {
                'from': 'cities',
                'localField': 'city_id',
                'foreignField': 'id',
                'as': 'city'
            }
        }
    ]
)

db.customers.aggregate(
    [
        {
            '$lookup': {
                'from': 'cities',
                'localField': 'city_id',
                'foreignField': 'id',
                'as': 'city'
            }
        },
        {
            '$lookup': {
                'from': 'countries',
                'localField': 'country_id',
                'foreignField': 'id',
                'as': 'country'
            }
        },
        {
            '$match': {
                '$or': [
                    { '$and': [
                        { 'car_year': 2000 },
                        { 'country.name': 'Indonesia' },
                    ] },
                    { '$and': [
                        { 'car_year': 1998 }
                    ] }
                ]
            }
        },
        {
            '$project': {
                'city._id': 0,
                'city.id': 0,
                'country._id': 0,
                'country.id': 0
            }
        }
    ]
)
