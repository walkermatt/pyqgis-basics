# Extending QGIS with Python

## Prerequisites

* Software
    * QGIS 2.14 or >= 2.18.5
        * On Windows, Linux or Mac with Python support (Python is included by default on Windows but you may need to explicity enable Python on Linux and Mac). To test if Python support is available try and open the Python Console within QGIS via Plugins > Python Console.
* Download sample data locally
    * [Natural Earth, populated places](http://www.qgistutorials.com/downloads/ne_10m_populated_places_simple.zip)
    * [Natural Earth, airports](http://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_airports.zip)

## Outline

* An introduction to PyQGIS
    * What's possible:
        * Run a script on startup
        * *Python console & scripts*
        * *Custom expressions*
        * Plugins
        * Standalone applications
    * Python basics
        * Using the Python console in QGIS
        * Variables
        * Calling and defining functions
        * Objects, properties and methods
        * Conditions and looping
    * Exercises
        * [Using Custom Python Expression Functions](https://astuntechnology.github.io/qgis-tutorials/html/en/docs/custom_python_functions.html)
        * [Getting Started With Python Programming](https://astuntechnology.github.io/qgis-tutorials/html/en/docs/getting_started_with_pyqgis.html)

## Python basics

### QGIS Python Console

* Open via `Plugins ‣ Python Console`
* Allows you to run Python code and interact with QGIS itself

### Hello World!

    print "Hello World!"

### String

    "Hello World!"

    # Concatenate strings
    "Hello" + " " + "World!"

    # String formatting
    "Hello %s" % "World!"

    # Double or single quotes are allowed
    'Python is "fun"'

    # Multi-line strings
    print """This string
    is split over
    multiple lines"""

    # Special characters such as a newline, tab and backslash can be included
    # via an escape sequence which starts with a backslash

    print "This string\nis split over\nmultiple lines"

    print "C:\\Users\\natalie"

    # You can use a "raw" string to avoid escape sequences
    print r"C:\Users\natalie"

### Numbers

    10

    int("10")

    10 + 1

    10 - 1

    10 * 2

    10 / 2

    # Floor division is the default with `int` values
    10 / 3

    # If at least one of the numbers is a `float` you get "true division" which
    # is probably what you expect
    10 / 3.0

    10 / float(3)

### Variables

    year = 2017

    last_year = year - 1

### Flow control

    latitude = 51.5
    if latitude >= 0:
        zone_letter = 'N'
    else:
        zone_letter = 'S'

    print zone_letter

### Lists

    [3, 5, 4, 2, 1]

### Loops

    for char in "Hello World!":
        print char

    for num in [3, 5, 4, 2, 1]:
        print num

### Imports

    # Import a module and call a function it provides
    import math
    math.floor(10.6)

    # Import individual items from a module
    from os import path
    path.join(r'C:\Users', 'Matt')

### Objects

    # Objects have a value and methods which operate on the value
    'qgis'.upper()

    # You work with a lot of objects in PyQGIS!
    print iface.activeLayer().name()

    # Some method calls return objects
    iface.activeLayer().extent()

    # You can get help about an object using the help function or you can look
    # the Class name up in the docs (or Google it)
    help(iface.activeLayer().extent())

### Functions

    # Calling an existing function
    sorted([3, 5, 4, 2, 1])

    # Defining your own function
    def GetUtmZone(longitude, latitude):
        zone_number = math.floor(((longitude + 180) / 6) % 60) + 1
        if latitude >= 0:
            zone_letter = 'N'
        else:
            zone_letter = 'S'
        return '%d%s' % (int(zone_number), zone_letter)

    # Get UTM Zone for London
    GetUtmZone(-0.1275, 51.5072)

## PyQGIS Exercises

* [Using Custom Python Expression Functions](https://astuntechnology.github.io/qgis-tutorials/html/en/docs/custom_python_functions.html)
* [Getting Started With Python Programming](https://astuntechnology.github.io/qgis-tutorials/html/en/docs/getting_started_with_pyqgis.html)

## Where next?

Further reading and learning to do more with Python and QGIS.

* [Google's Python Class](https://developers.google.com/edu/python/)
* [Official Python Tutorial](https://docs.python.org/2.7/tutorial/index.html)
* [PyQGIS, Python etc. API docs](http://geoapis.sourcepole.com/)
* [PyQGIS Developer Cookbook](http://docs.qgis.org/2.14/en/docs/pyqgis_developer_cookbook/)
* Python Scripting (PyQGIS) section of [QGIS Tutorials and Tips](http://www.qgistutorials.com/en/index.html)
