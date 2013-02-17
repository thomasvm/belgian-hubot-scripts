# Description
#   Farmers expressions
#
# Commands:
#   hubot wa zeitn boer - ask hubot what the farmer said
#
# Author:
#   Thomas Goemare
#
 
module.exports = (robot) ->
  robot.respond /wa zeitn boer/, (msg) ->
    farmers_expressions = [
        "tleevn es vo de rappe zeitn boer en jie stook zinn trektur in 2de !",
        "asse kan veugeln kanse vliegn wok zeitn boer en n smeet zn wuf deur d'rutte",
        "Kwil pitten zeitn boer en ie kocht nen bak druvven",
        "Lachen is gezond zeitn boer, en ie ging pret gaan plantn!",
        "Kga deur de meur zeitn boer, en ie dee de deure open",
        "stront es geld zeitn boer en ie skeet zinne portemonnee vul!!",
        "skerven bringn geluk zeitn boer en ie smeet zijn wuf deur de veranda",
        "Zoad is zoad zeitn boer en begost ze veld te poepn",
        "glas es glas zeitn boer, en ie dronk ut zin serre",
        "zoad es zoad zeitn boer, en ie stak zin wuf vul me mais",
        "tleevn es vo de rappe zeitn boer en je stook ne raceband ip zin bakwoagn",
        "wie nie sterk es moe slim zin zeitn boer en ie sloeg were !",
        "Kent get zeitn boer, en ie gavet were",
        "Miljaar gij ku zagen, zei den boer... en je gaf ze wuf e planke",
        "heb je ze verleid? vroeg zinne moat, banink zeitn boer, ze lag direct goed!!",
        "frut is gezond, zeitn boer en ie gaf zn wuf e pirre",
        "Time is money zeitn boer en ie verkocht zin horloge",
        "Zuign gao je! zeitn boer en ne gaf zn vrouwmens e stofzuiger",
        "Eetn is eetn zeitn boer en je reedt zen tracteur in fritn",
        "Zand derover zei den boer, en ie begroef zin wuf",
        "De tidn zin veranderd, zeitn boer, en ne zette zin horloge ipt zomeruure",
        "To be or not to be zeite boer en ie zapte na de vtm.",
        "Amai gij doet fel, zeitn boer, en ie deed zn zunnebril oan.",
        "kwil n heete poezze zeitn boer en ie smeet zin kat int vier",
        "Salamanderen! zei den boer, en ie duwde zijn wuf in de viver...",
        "ti vwor ol de koein gelik zeitn boer, en je stak zin wuf butn",
        "Aw mo leute en zeitn boer, en ie stak zin wuf in brande !",
        "Tleven is ard zeitn boer, en ie kakte ne stjin!",
        "Een gat is een gat zei den boer, je stak zn flutte in ne molhoop",
        "tes tid zeitn boer en ie droajde zin karre",
        "Olle bitjes elpn zeitn boer, en ie piste in de zjee",
        "kgat zwin ut angn zeitn boer en jging achtr wasknijpers",
        "kmoete wok nen faceboek ein zeitn boer, en je ging noa de fnac",
        "den tid vliegt zeitn boer tegn zin wuf, en ie smeet de wekker noar eure kop",
        "Tis al 'n oede doze ant wordn zeitn boer en ie smeet ze wuf by't oed papier",
        "Eten is eten, zeitn boer en ie reed zien trakteur in frietn."
    ]

    expression = msg.random farmers_expressions
    msg.send expression
    
