
# Description:
#   Example scripts for you to examine and try out.

module.exports = (robot) ->

#============================================

   robot.respond /who (.*) lee (.*)/i, (res) ->
      res.send "Lee Kilgore"
      res.send "970-480-7888"
      res.send "ronaldleemankilgore@gmail.com"
      res.send "current location is undisclosable"

#============================================
