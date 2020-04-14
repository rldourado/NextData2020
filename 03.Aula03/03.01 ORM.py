from covid.models import Confirmed, Deaths

Confirmed.objects.all()

Confirmed.objects.get( id = 50 )

Confirmed.objects.count()

cs = Confirmed.objects.filter( cases__gt = 1000 )

cs.count()

c = Confirmed()

for cn in cs:
    c = cn
    print( c.date, c.cases )

from django.utils import timezone

newc = Confirmed()
newc.aluno_id = 0
newc.country = c.country
newc.lat = c.lat
newc.lng = c.lng
newc.date = timezone.now()
newc.cases = 30000
newc.deleted = False
