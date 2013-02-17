# Description
#   Lookup tv show information
#
# Commands:
#   hubot vandaag in <tv show> - displays info for that tv show for today
#   hubot vanavond in <tv show> - displays info for that tv show for today
#
# Author:
#   Thomas Van Machelen
#
programs =
  thuis:
    channel: "een"
  familie:
    channel: "vtm"
  "komen eten":
    channel: "vier"
    urlprefix: "komen-eten"
  "dagelijkse kost":
    channel: "een"
    urlprefix: "dagelijkse-kost"
    loadtitle: true

module.exports = (robot) ->
  robot.respond /(vandaag|vanavond) in (.+)/i, (msg) ->
    name = msg.match[2]

    if not programs[name]?
      msg.reply "dat programma ken ik niet :-("
      return

    program = programs[name]

    # check all programs on channel today
    todayOnChannel = msg.http "http://www.teveblad.be/tv-gids/zenders/#{program.channel}"
    todayOnChannel.get() (err, res, body) ->
      if err
        msg.reply "error!"
        return

      # find all occurences
      checker = new RegExp("\"(http://www.teveblad.be/tv-gids/programma/\\d+/#{program.urlprefix || name}.+?)\"")
      matches = []

      m = body.match checker
      while m
        url = m[1]
        matches.push url
        body = body.replace url, " "
        m = body.match checker

      if not matches.length
        msg.reply "Geen uitzendingen gevonden voor vandaag"
        return

      # load detail
      detailUrl = matches[matches.length - 1]
      console.log detailUrl

      detail = msg.http detailUrl
      detail.get() (err, res, body) ->
        # match description paragraph
        descriptionChecker = new RegExp('<p class="desc">(.+?)</p>')
        today = body.match descriptionChecker

        if today
          if program.loadtitle
            # possibly get h3 title
            titleChecker = new RegExp('<h3>(.+?)</h3>')
            todayTitle = body.match titleChecker
            msg.send todayTitle[1]

          msg.send today[1]
        else
          msg.send "niks gevonden voor vandaag"
              
