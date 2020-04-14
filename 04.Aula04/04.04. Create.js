use next

db.confirmed.insertOne(
    {
        "aluno": {
            "id": 0,
            "nome": "Rubens"
        },
        "country": "Brazil",
        "lat": -14.235,
        "lng": -519.253,
        "date": "2020-01-22",
        "cases": 0
    }
)

db.confirmed.insertMany(
    [
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-23", "cases": 0 },
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-24", "cases": 0 },
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-25", "cases": 1 },
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-26", "cases": 1 },
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-27", "cases": 5 },
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-28", "cases": 19 },
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-29", "cases": 58 },
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-30", "cases": 131 },
        { "aluno": { "id": 0, "nome": "Rubens" }, "country": "Brazil", "lat": -14.235, "lng": -519.253, "date": "2020-01-31", "cases": 410 }
    ]
)
