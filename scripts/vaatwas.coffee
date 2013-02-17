# Description
#   Nobody likes to empty the dishwasher, hubot makes it easy
#   to pick a volunteer
#
# Commands:
#   hubot wie leegt de vaatwas - Point someone to empty the dishwasher
#
# Author:
#   Thomas Van Machelen
#

module.exports = (robot) ->
  robot.respond /wie leegt de vaatwas/, (msg) ->
    peoples = [
      # TODO: this is where you list the 
      # possible volunteers to empty the dishwasher
      "names",
      "of",
      "possible",
      "volunteers",
    ]
    
    unluckynames = [
      "winnaar",
      "pechvogel",
      "slaaf van dienst",
      "keukenmeid"
    ]

    unlucky = msg.random peoples
    name = msg.random unluckynames
    msg.send "En de #{name} is: #{unlucky}"

