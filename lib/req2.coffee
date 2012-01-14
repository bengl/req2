require 'coffee-script'

req = (lib) ->
  #TODO handle http(s)
  try
    require lib
  catch e
    require('fs').readFileSync lib

req_each = (each) ->
  req lib for lib in each

module.exports = (libs...) ->
  if libs.length == 1
    (if Array.isArray libs[0] then req_each else req) libs[0]
  else
    req_each libs
