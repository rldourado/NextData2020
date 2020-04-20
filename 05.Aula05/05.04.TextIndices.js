use next

db.texto.insert( { txt: 'Batatinha quando nasce, espalha rama pelo chão' } )
db.texto.insert( { txt: 'Escolhe um trabalho de que gostes, e não terás que trabalhar nem um dia na tua vida.' } )
db.texto.insert( { txt: 'Enquanto houver vontade de lutar, haverá esperança de vencer' } )
db.texto.insert( { txt: 'A vida só pode ser compreendida, olhando-se para trás; mas só pode ser vivida, olhando-se para frente' } )

db.texto.createIndex( { txt: 'text' } )

db.texto.getIndices()

db.texto.dropIndex( 'txt_text' )

db.texto.createIndex(
    { txt : 'text' },
    { default_language: 'portuguese' }
 )

db.texto.find( { $text: { $search: 'vida' } } )

db.texto.find(
    { $text: { $search: 'vida' } },
    { score: { $meta: 'textScore' } }
 ).sort( { score: { $meta: 'textScore' } } )
