# Description:
#   Example scripts for you to examine and try out

module.exports = (robot) ->

   robot.hear /education/i, (res) ->
     res.send "Education... EDUCATION!!! I love school!!!!"

  
#============================================

   robot.respond /who (.*) rob (.*)/i, (res) ->
      res.send "badger"
      res.send "@rob annoy me"

#============================================
