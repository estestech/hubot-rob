# Description:
#   Example scripts for you to examine and try out

module.exports = (robot) ->

   robot.hear /education/i, (res) ->
     res.send "I am the evil rob! I love school!!!!"

  
#============================================

   robot.respond /who (.*) rob (.*)/i, (res) ->
      res.send "I am the evil rob!"
      res.send "@tvbot annoy me"

#============================================
