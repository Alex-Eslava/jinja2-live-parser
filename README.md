# Jinja2 live parser

A lightweight live parser for [Jinja2](http://jinja.pocoo.org/docs/dev/) based on [Flask](http://flask.pocoo.org/) and [Jquery](http://jquery.com/).  
All you need is Python and preferably [pip](https://pypi.python.org/pypi/pip). Can parse JSON and YAML inputs.

The fork adds some minor fixes and changes the default port for better compatibility. 

## Install

### Clone + pip

    $ git clone git@github.com:abourguignon/jinja2-live-parser.git
    $ pip install -r requirements.txt
    $ python parser.py

### Dockerfile

Build it:

    docker build -t j2parser .
    docker run -d -p 8101:8101 j2parser



## Usage

You are all set, go to `http://localhost:8101/` and have fun.  
You can add any custom filter you'd like in `filters.py`.  Just make sure the function's name starts with `filter_`.


## Preview

![preview](http://i.imgur.com/T65xjAf.png)
