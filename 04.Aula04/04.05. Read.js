
use next

confirmed_cases = db.confirmed.find( { } )

confirmed_cases = db.confirmed.find( { "cases": 0 } )

confirmed_cases = db.confirmed.find( { "cases": { "$gt": 0 } } )

while ( confirmed_cases.hasNext() ) {
    print( tojson( confirmed_cases.next() ) )
}
