# Description:
#   Translating to Gents (dialect spoken in Ghent, Belgium)
#
# Commands:
#   See regex below - Reply in Gents
#
# Author:
#   Vincent Mouton
#

module.exports = (robot) ->
  robot.hear /(hoofd|shit|mager|(te kort)|vriendin|(stop ermee)|zenuw|(werkt tegen)|(snap het niet)|tetten|onnozel|stom|honger|diarree|(helemaal fout)|decolt(e|é))/i, (msg) ->
    speak =
      "shit" : "krijge der 't vliegend schâât van"
      "hoofd" : "uufflakke?"
      "mager" : "'t Es e planke mee in goat in"
      "te kort" : "Mijn treeze luupt were mee guul eur fuure bluut"
      "vriendin" : "Gaa zaat main loetse"
      "stop ermee" : "'t es gien avanse"
      "zenuw" : "t' wirkt uuk op maan kluute"
      "werkt tegen" : "aa ee in main roâpe geschéte"
      "snap het niet" : "dure de comprenure"
      "tetten" : "veel volk an de stoase"
      "slect" : "ut trekt op niets"
      "onnozel": "oenderd meters dwoas kake mee hindernisse"
      "stom" : "lappe,tschoap es de preute oaf"
      "honger" : "de muize liggen duud in u aaskasse"
      "diarree" : "‘k goa maane kop deure mijn gat schaaten"
      "helemaal fout" : "Baniengij!"
      "decolte" : "De breudjes ligge veur de venjster"
      "decolté" : "De breudjes ligge veur de venjster"

    match = speak[msg.match[0]]
    msg.reply match if match
