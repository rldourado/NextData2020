
UPDATE next.confirmed SET lat = ( lat - 1 ), lng = ( lng - 1 ) WHERE MOD( cases, 2 ) = 1;
