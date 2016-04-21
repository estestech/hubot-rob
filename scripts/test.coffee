
# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

   robot.hear /education/i, (res) ->
     res.send "Education... EDUCATION!!! We don't need no education!!!!"

  
#============================================

   robot.respond /who (.*) lee (.*)/i, (res) ->
      res.send "Lee Kilgore"
      res.send "970-480-7888"
      res.send "ronaldleemankilgore@gmail.com"
      res.send "current location is undisclosable"

#============================================
