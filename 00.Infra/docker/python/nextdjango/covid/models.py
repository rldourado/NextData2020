from django.db import models


class Covid( models.Model ):
    aluno_id   = models.IntegerField()
    country    = models.CharField( max_length = 45 )
    lat        = models.DecimalField( max_digits = 7, decimal_places = 3 )
    lng        = models.DecimalField( max_digits = 7, decimal_places = 3 )
    date       = models.DateField()
    cases      = models.IntegerField()
    deleted    = models.BooleanField()
    _created   = models.DateTimeField( auto_now_add = True )
    _updated   = models.DateTimeField( auto_now = True )

    def __str__( self ):
        return 'country: {}; lat: {:f}; lng: {:f}; date: {}; cases: {:n}'.format( self.country, self.lat, self.lng, self.date, self.cases )

    class Meta:
        abstract = True
        managed  = False

class Confirmed( Covid ):
    class Meta( Covid.Meta ):
        db_table = 'confirmed'

class Deaths( Covid ):
    class Meta( Covid.Meta ):
        db_table = 'deaths'
