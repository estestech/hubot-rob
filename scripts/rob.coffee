
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

   robot.respond /who (.*) rob (.*)/i, (res) ->
      res.send "Rob the Robot"
      res.send "970-586-9165"
      res.send "@rob lulz"
      res.send "current location is undisclosable"

#============================================
