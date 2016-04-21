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
   
   robot.respond /annoy me/, (res) ->
     if annoyIntervalId
       res.send "SCHOOL SUCK S SO BAD!!!"
       return

     res.send "Listen all of you that hate school!!!"
     annoyIntervalId = setInterval () ->
       res.send "SCHOOL SUCK S SO BAD!!!"
     , 1000

   robot.respond /stop it/, (res) ->
     if annoyIntervalId
       res.send "GUYS, GUYS, GUYS! -brief pause- SHEESH, WE JUST HATE SCHOOL..."
       clearInterval(annoyIntervalId)
       annoyIntervalId = null
     else
       res.send "Not annoying you right now, am I?"
