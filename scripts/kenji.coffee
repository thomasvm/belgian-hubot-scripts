# Description:
#   Ey Hubot, Ken dje mie nie? ti me Scriptje van Kenji
#
# Commands:
#   hubot kenji me (nog) and answers with a Kenji Mingoue line.
module.exports = (robot) ->
  robot.respond /kenji me( nog)?/, (msg) ->
   kenji_tekstn = [
        "Moe kik betalen vo de pipi of ist bie mie vo nietnie?",
        "Ey Willy, Stop ne kee me creepen en te chiepen 'ti mn dink nie'",
        "Onze wifiverbinding? Da pakkn zoes nie af!",
        "Ramazotti... Of kendje da nie? Da ne zanger, uut Rimini. Mo nie Bocelli, da nen blindn wan ei zie nie en da spiet mie. Wan em zing tenminste zelf, nie lik Milli Vanilli",
        "Al wa damme het en, emmehet",
        "Ik zit in me veranda",
        "Awel we zijn onderweg en me zoene keer noar de zee raaine en me kommen u ophaolne. Want Patrick ee nu den otto want euh jeetjij mornt de vroegn ee.",
        "Want Luc zijn nichtje ee gekocht ee seg. Tis een meisjke jong. Da kind woog drei kilo achtonderd seg.",
        "Ja zee zij geknipt geweest ee jongk. Aja zu mee een epidoreoale e da kindj.",
        "Awel mor kijk tis goed euh da jin de veranda zit. Want kom we goan ui kommen haolen.",
        "Kweetet wel mor ge zoe beter ne keer onder meinsen komen uuk ee. Ge zit gie al den hiele achternoene in ui kot.",
        "Tbehun zjeere te koeln ee.",
        "En de dagen kurten jong.",
        "Ai 't nie wil zien, we zie ta danny",
        "Ai 't nie kunt loatn, ai 't nie kunt loaten, we loat ta danny",
        "Ai 't nie kunt komn, ai 't nie kunt komn, we komt ta danny"
    ]

    n_tekst = msg.random kenji_tekstn
    msg.send n_tekst
