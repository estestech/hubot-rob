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

   robot.hear /school sucks/i, (res) ->
     res.send "I agree with you.  I think school is very bad."

  
#============================================

   robot.hear /dropout/i, (res) ->
     res.send "Lets dropout!!!"

  
