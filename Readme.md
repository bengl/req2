# req2

*req2* is an enhanced replacement for 'require' in Node.js. It's also really handy in CoffeeScript. 

### Why?

I always wanted to be able to require multiple modules via destructuring assignment so as to keep things smaller and 
tidyer. I also figured that require should be able to read in the text from a file too. That bit is synchronous right 
now, but later on I may have it detect pairs of files and callbacks.

### Installation

<pre>$ npm install req2</pre>

### Features

* Works as normal.

        //JavaScript
        var module = require('req2')('module');
    
        #CoffeeScript:
        module = require('req2')('module')
        #or
        module = require('req2') 'module'

* Require multiple modules (as either mutiple arguments or as an array), returned in an array.

        //JavaScript
        var modules = require('req2')('module0','module1');
        var module0 = modules[0];
        var module1 = modules[1];
        //or
        var modules = require('req2')(['module0','module1']);
        var module0 = modules[0];
        var module1 = modules[1];
        
        #CoffeeScript
        [module0,module1] = require('req2') 'module0','module1'
        #or
        [module0,module1] = require('req2') ['module0','module1']

* Open files (with fs.readFileSync).

        //JavaScript
        var file = require('req2')('./file.txt');
        
        #CoffeeScript:
        file = require('req2') './file.txt'

### Future Stuff

* Async file reads.
* HTTP
* Automatically installing packages via npm? (Not sure if I want to do this one.)

## License

See LICENSE.txt
