
use next

// Encontra todos os itens da coleção
let confirmed_cases = db.confirmed.find( { } )

// Encontra os itens cujo campo cases é igual a zero
let confirmed_cases = db.confirmed.find( { "cases": 0 } )

let confirmed_cases = db.confirmed.find( { "cases": { "$gt": 0 }, "cases": { "$lte": 100 } } )

db.confirmed.find(
    {
        "$and": [
            { "cases": { "$gt": 10 } },
            { "cases": { "$lt": 100 } }
        ]
    }
)

db.confirmed.find(
    {
        "$or": [
            {
                "$and": [
                    { "cases": { "$gt": 10 } },
                    { "cases": { "$lt": 100 } }
                ]
        
            },
            {
                "cases": { "$ne": 0 }
            }
        ]
    }
)

while ( confirmed_cases.hasNext() ) {
    print( tojson( confirmed_cases.next() ) )
}
