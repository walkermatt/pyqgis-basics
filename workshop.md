<div>
# Extending QGIS with Python

</div><div>

## Prerequisites

* Software
    * QGIS 2.14 or >= 2.18.5
        * On Windows, Linux or Mac with Python support
* Download sample data locally
    * Natural Earth, populated places
        * [http://bit.ly/2pVHwlp](http://bit.ly/2pVHwlp)
    * Natural Earth, airports
        * [http://bit.ly/2qQvqP9](http://bit.ly/2qQvqP9)

</div><div>

## Outline

* What's possible
* Python basics
* PyQGIS exercises

</div><div>

## What's possible

* Run a script on
    * startup
    * project open, save or close
* *Custom expressions*
* *Python console & scripts*
* Processing scripts
* Plugins
* Standalone applications

</div><div>

## Python basics

</div><div data-background-image="python.jpg" style="color: white">

## Python's quite friendly


</div><div>

### QGIS Python Console

* Open via
    * `Plugins ‣ Python Console`
* Allows you to run Python code and interact with QGIS itself

</div><div>

### Hello World!

    print "Hello World!"

</div><div>

### Strings

    "Hello World!"

    # Concatenate strings
    "Hello" + " " + "World!"

    # String formatting
    "Hello %s" % "World!"

    # Double or single quotes are allowed
    'Python is "fun"'

</div><div>

    # Multi-line strings
    print """This string
    is split over
    multiple lines"""

    # Special characters such as a newline,
    # tab and backslash can be included
    # via an escape sequence which starts
    # with a backslash

    print "This string\nis split over\nmultiple lines"

    print "C:\\Users\\natalie"

    # You can use a "raw" string to avoid escape sequences
    print r"C:\Users\natalie"

</div><div>

### Numbers

    10

    # Parse a number from a string
    # or truncate a `float`
    int("10")

    # Arithmetic is largely as you'd expect

    10 + 1

    10 - 1

    10 * 2

    10 / 2

</div><div>

    # Floor division is the default
    # with `int` values
    10 / 3

    # If at least one of the numbers
    # is a _float you get true division
    # which is probably what you expect
    10 / 3.0

    # This is equiverlent to above
    10 / float(3)

</div><div>

## Booleans

    True

    False

    # and, or operators

    True and True

    True and False

    False or True

</div><div>

### Variables

    year = 2017

    print year

    last_year = year - 1

    print last_year

</div><div>

### Flow control

    latitude = 51.5
    if latitude >= 0:
        zone_letter = 'N'
    else:
        zone_letter = 'S'

    print zone_letter

</div><div>

### Lists

    l = [3, 5, 4, 2, 1]

    print l

    # Access elements via position
    # (the first element is at 0)
    print l[0]

</div><div>

### Loops

    for char in "Hello World!":
        print char

    for num in [3, 5, 4, 2, 1]:
        print num

</div><div>

### Imports

    # Import a module and call a function it provides
    import math
    math.floor(10.6)

    # Import individual items from a module
    from os import path
    path.join(r'C:\Users', 'Matt')

</div><div>

### Objects

    # Objects represent a value and expose
    # properties and methods
    'qgis'.upper()

    # You work with a lot of objects in PyQGIS!
    iface.activeLayer().name()

    # Some method calls return objects
    iface.activeLayer()

    # You can get help about an object using the help
    # function or you can look the Class name up in
    # the docs (or Google it)
    help(iface.activeLayer())

    # When we find a method or property we're
    # interested in we can use it
    iface.activeLayer().extent()


</div><div>

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

</div><div>

<a href="http://labs.webgeodatavore.com/partage/diagramme_principal.html"><img src="pyqgis_api.png" /></a>

</div><div data-background-image="kitten.jpg" style="color: white">

</div><div>

## PyQGIS exercises

* [Using Custom Python Expression Functions](https://astuntechnology.github.io/qgis-tutorials/html/en/docs/custom_python_functions.html)
* [Getting Started With Python Programming](https://astuntechnology.github.io/qgis-tutorials/html/en/docs/getting_started_with_pyqgis.html)

</div><div>

## Where next?

Further reading and learning to do more with Python and QGIS.

* [Google's Python Class](https://developers.google.com/edu/python/)
* [Official Python Tutorial](https://docs.python.org/2.7/tutorial/index.html)
* [PyQGIS, Python etc. API docs](http://geoapis.sourcepole.com/)
* [PyQGIS Developer Cookbook](http://docs.qgis.org/2.14/en/docs/pyqgis_developer_cookbook/)
* Python Scripting (PyQGIS) section of [QGIS Tutorials and Tips](http://www.qgistutorials.com/en/index.html)

</div><div>

Thank you

</div>
