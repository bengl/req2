req2 = require '../lib/req2'
assert = console.assert
passed = ()->console.log '.'
assert req2('fs') == require('fs')
passed()
[fs,util] = req2 'fs', 'util'
assert fs == require('fs') and util == require('util')
passed()
[os,path] = req2 ['os', 'path']
assert os == require('os') and path == require('path')
passed()
assert req2('./tests/test.txt').toString() == fs.readFileSync('./tests/test.txt').toString()
passed()
console.log 'Tests Passed!'
