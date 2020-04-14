
use next

db.confirmed.deleteOne(
    { "cases": { "$gt": 100 } }
)

db.confirmed.deleteMany(
    { "cases": { "$gt": 100 } }
)
