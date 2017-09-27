# Description:
#   <description of the scripts functionality>
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot <trigger> - <what the respond trigger does>
#   <trigger> - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   <github username of the original script author>

module.exports = (robot) ->

  robot.respond /おはよう/i, (msg) ->
    msg.send "おはようございます！"

#  robot.hear /((疲|つか)れた|I'm tired.)/i, (msg) ->
  robot.respond /((疲|つか)れた|I'm tired.)/i, (msg) ->
    msg.send msg.message.user.name+"さん、おつかれさま！"

  robot.hear /ここはどこ/i, (msg) ->
    room = msg.message.user.room
    msg.send JSON.stringify(msg.message)
