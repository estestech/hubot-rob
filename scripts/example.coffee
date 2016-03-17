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
   
#============================================

   robot.hear /badger/i, (res) ->
     res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
     
#============================================

   robot.respond /open the (.*) doors/i, (res) ->
     doorType = res.match[1]
     if doorType is "pod bay"
       res.reply "I'm afraid I can't let you do that."
     else
       res.reply "Opening #{doorType} doors"
       
#============================================

   robot.respond /Who is Ian Kilgore/i, (res) ->
      res.send "970-235-1770"

#============================================

   robot.respond /Who (.*) Ian (.*)/i, (res) ->
      res.send "ianmacduffkilgore@gmail.com"
      
#============================================

   robot.hear /I like pie/i, (res) ->
     res.emote "makes a freshly baked pie"
     
#============================================

   lulz = ['lol', 'rofl', 'lmao']

   robot.respond /lulz/i, (res) ->
     res.send res.random lulz
     
#============================================

   robot.topic (res) ->
     res.send "#{res.message.text}? That's a Paddlin'"

#============================================

   robot.respond /you are a little slow/, (res) ->
     setTimeout () ->
       res.send "Who you calling 'slow'?"
     , 60 * 1000
     
#============================================

   annoyIntervalId = null

   robot.respond /annoy me/, (res) ->
     if annoyIntervalId
       res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
       return

     res.send "Hey, want to hear the most annoying sound in the world?"
     annoyIntervalId = setInterval () ->
       res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH", 1000
     
#============================================

   robot.respond /unannoy me/, (res) ->
     if annoyIntervalId
       res.send "GUYS, GUYS, GUYS!"
       clearInterval(annoyIntervalId)
       annoyIntervalId = null
     else
       res.send "Not annoying you right now, am I?"

#============================================

   robot.respond /have a soda/i, (res) ->
     sodasHad = robot.brain.get('totalSodas') * 1 or 0

     if sodasHad > 4
       res.reply "I'm too fizzy.."

     else
       res.reply 'Sure!'

       robot.brain.set 'totalSodas', sodasHad+1
       
#=============================================

   robot.respond /sleep it off/i, (res) ->
     robot.brain.set 'totalSodas', 0
     res.reply 'zzzzz'
