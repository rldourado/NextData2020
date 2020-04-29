
db.customers.aggregate(
    [
        {
            '$lookup': {
                'from': 'cities',           // Coleção de Origem dos Dados
                'localField': 'city_id',    // Campo da Coleção atual que faz referência a coleção de origem
                'foreignField': 'id',       // Campo estrangeiro
                'as': 'city'                // Como o objeto vai ser chamado
            }
        }
    ]
).pretty()

db.customers.aggregate(
    [
        {
            '$lookup': {
                'from': 'cities',           // Coleção de Origem dos Dados
                'localField': 'city_id',    // Campo da Coleção atual que faz referência a coleção de origem
                'foreignField': 'id',       // Campo estrangeiro
                'as': 'city'                // Como o objeto vai ser chamado
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
        }
    ]
).pretty()

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
        },
        {
            '$sort': {
                'car_year': -1,
            }
        }
    ]
).pretty()
