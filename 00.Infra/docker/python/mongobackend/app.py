# -*- coding: utf-8 -*-

from eve import Eve

app = Eve( settings = 'settings.py' )

@app.route( '/hello' )
def hello_world():
    return 'hello world!'

@app.route( '/version' )
def version():
    return '1.0.0'

if __name__ == '__main__':
    app.run( host = '0.0.0.0' )
