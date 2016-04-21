module.exports = (robot) ->

annoyIntervalId = null

   robot.respond /annoy me/, (res) ->
     if annoyIntervalId
       res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
       return

     res.send "Listen you all that hate school!"
     annoyIntervalId = setInterval () ->
       res.send "SCHOOLS SUCKS SO BAD!!!"
     , 1000

   robot.respond /unannoy me/, (res) ->
     if annoyIntervalId
       res.send "GUYS, GUYS, GUYS! CALM DOWN I JUST HATE SCHOOL THATS ALL!"
       clearInterval(annoyIntervalId)
       annoyIntervalId = null
     else
       res.send "Not annoying you right now, am I?  Or should I..."
