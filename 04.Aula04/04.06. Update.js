
use next

db.confirmed.updateOne(
    { "cases": { "$gt": 100 } },
    {
        "$inc": { "cases": 100 },
        "$inc": { "lat": -1 },
        "$set": { "lng": -525.375 }
    }
)

db.confirmed.updateOne(
    { "cases": { "$gt": 100 } },
    {
        "$inc": { "cases": 100 },
        "$set": { "longitude": -525.375 }
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

db.confirmed.updateMany(
    { },
    {
        "$set": { "longitude": -500.000 }
    }
)
