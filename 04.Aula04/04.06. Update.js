
use next

db.confirmed.updateOne(
    { "cases": { "$gt": 100 } },
    {
        "$inc": { "cases": 100 },
        "$inc": { "lat": -1 },
        "$set": { "lng": -525.375 }
    }
)

db.confirmed.updateMany(
    { "cases": { "$gt": 100 } },
    {
        "$inc": { "cases": 100 },
        "$inc": { "lat": -1 },
        "$set": { "lng": -525.375 }
    }
)
