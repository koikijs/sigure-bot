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

  testAction = (msg) ->
    msg.send msg.random [
      "ワカリマシタ。ネボウデスネ？",
      "エ？イマオキタノ？？",
      "ワカリマシタ。ゴジアイクダサイマセ。",
      "デンシャガチエンシテルンジャナイ。ヲマエガチエンシテルンダ。",
      "ナブチサン、オキテクダサイ"
    ]

  healthAction = (msg) ->
    msg.send "しあわせはいつもじぶんのこころがきめる　のぞみ"

  # main
  robot.hear /(sigure|しぐれ|シグレ|時雨) (.*)$/, (msg) ->
    args = msg.match[2].split(' ')

    switch args[0]
      when "test", "テスト" then testAction(msg)
      when "health", "元気？" then healthAction(msg)
      else msg.send "There are no function for the description: \"#{msg.match[2]}\"."
