# Description:
#   PEDRO POUBLON IS DE MAX
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot WA ZEI PEDRO -- RANDOM PEDRO POUBLON MEGAQUOTE
#   hubot WA ZEI PEDRO POUBLON -- RANDOM PEDRO POUBLON MEGAQUOTE
#
# Author:
#   Thomas Goemaere
#

module.exports = (robot) ->

  robot.respond /WA ZEI PEDRO( POUBLON)?/, (msg) ->
    url = "http://api.twitter.com/1/statuses/user_timeline.json?include_entities=false&include_rts=false&screen_name=pedropoublon&count=200&trim_user=true&exclude_replies=true"
    msg.http(url).get() (err, res, body) ->
      if res.statusCode isnt 200
        console.error "TWITTER API V1 NOT WORKING ANYMORE"
        return
      data = JSON.parse(body)
      tweet = msg.random data
      msg.send tweet.text
