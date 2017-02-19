# envelope = room: "C217B7QG0" # test
# envelope = room: "C0JHEPQ94" # sigure

module.exports = (robot) ->

# error handling
  robot.error (err, res) ->
    robot.logger.error err
    robot.logger.error res

  # startup
#  robot.send envelope, '!!!'
#  setTimeout () ->
#    msgs = JSON.parse(robot.brain.get('msgs') || '[]')
#    message = msgs[Math.floor(Math.random() * msgs.length)] || ''
#    robot.send test, message
#  , 5000

  msgs = [
    "ワカリマシタ。ネボウデスネ？",
    "エ？イマオキタノ？？",
    "ワカリマシタ。ゴジアイクダサイマセ。",
    "デンシャガチエンシテルンジャナイ。ヲマエガチエンシテルンダ。",
    "ナブチサン、オキテクダサイ"
  ]

  robot.hear /.*/, (msg) ->
    msg.send msg.random msgs
