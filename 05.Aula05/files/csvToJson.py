#!/usr/local/bin/python

import datetime
import csv, json, sys, getopt
from collections import defaultdict
 
def identity( x ):
    return x

transformers = defaultdict( lambda: identity )
transformers.update( {
    'id': int,
    'city_id': int,
    'country_id': int,
    'car_id': int,
    'car_maker_id': int,
    'car_year': int,
} )

def conversion( csvInputFile, jsonOutputFile ):
    with open( csvInputFile, 'r' ) as csvFile:
        with open( jsonOutputFile, 'w' ) as jsonFile:
            csvReader = csv.DictReader( csvFile )
            for row in csvReader:
                transformed_row = { key: transformers[ key ]( value ) for key, value in row.items() }

                print( transformed_row )
                json.dump( transformed_row, jsonFile, separators = ( ',', ':' ) )
                jsonFile.write( '\n' )

def main( argv ):
    print( 'CSV to JSON converter' )

    inputfile = ''
    outputfile = ''
    
    try:
        opts, args = getopt.getopt( argv, 'hi:o:', [ 'ifile=', 'ofile=' ] )
    except getopt.GetoptError:
        print( 'csvToJson.py -i <inputfile> -o <outputfile>' )
        sys.exit( 2 )
    for opt, arg in opts:
        if opt == '-h':
            print( 'csvToJson.py -i <inputfile> -o <outputfile>' )
            sys.exit()
        elif opt in ( '-i', '--ifile' ):
            inputfile = arg
        elif opt in ( '-o', '--ofile' ):
            outputfile = arg
    print( 'Input file is ', inputfile )
    print( 'Output file is ', outputfile )

    conversion( inputfile, outputfile )

if __name__ == '__main__':
    main( sys.argv[ 1 : ] )
