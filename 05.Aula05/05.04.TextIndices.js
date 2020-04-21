use next

db.texto.insert( { txt: 'Batatinha quando nasce, espalha rama pelo chão' } )
db.texto.insert( { txt: 'Escolhe um trabalho de que gostes, e não terás que trabalhar nem um dia na tua vida.' } )
db.texto.insert( { txt: 'Enquanto houver vontade de lutar, haverá esperança de vencer' } )
db.texto.insert( { txt: 'A vida só pode ser compreendida, olhando-se para trás; mas só pode ser vivida, olhando-se para frente' } )

db.texto.insert( {
    "poema": "Eu, filho do carbono e do amoníaco, Monstro de escuridão e rutilância, Sofro, desde a epigénesis da infância, A influência má dos signos do zodíaco."
} )

db.texto.insert( {
    "poema": "Eu, filho do carbono e do amoníaco, Monstro de escuridão e rutilância, Sofro, desde a epigénesis da infância, A influência má dos signos do zodíaco."
} )

db.texto.insert( {
    "poema": "MORTE E VIDA SEVERINA O RETIRANTE EXPLICA AO LEITOR QUEM É E A QUE VAI — O meu nome é Severino, não tenho outro de pia. Como há muitos Severinos, que é santo de romaria, deram então de me chamar Severino de Maria; como há muitos Severinos com mães chamadas Maria, fiquei sendo o da Maria do finado Zacarias."
} )

db.texto.createIndex( { txt: 'text', poema: 'text' } )

db.texto.getIndices()

db.texto.dropIndex( 'txt_text_poema_text' )

db.texto.createIndex(
    { txt: 'text', poema: 'text' },
    { default_language: 'portuguese' }
 )

db.texto.find( { '$text': { '$search': 'vida' } } )

db.texto.find(
    { $text: { $search: 'vida' } },
    { score: { $meta: 'textScore' } }
 ).sort( { score: { $meta: 'textScore' } } )
