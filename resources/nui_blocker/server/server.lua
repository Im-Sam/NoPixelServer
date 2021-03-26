local webhook = 'placeholder for discord webhook'


RegisterServerEvent('sway:arthur-morgan-best-story-char-ever')
AddEventHandler('sway:arthur-morgan-best-story-char-ever', function()
    print('detekted ' .. GetPlayerName(source))
    sendToDiscord("Asshole Logged", GetPlayerName(source).." tried to use nui_devtools at "..os.time())
    DropPlayer(source, 'Hmm, what you wanna do in this inspector?')
end)

function sendToDiscord(name, args, color)
    local connect = {
          {
              ["color"] = 16711680,
              ["title"] = "".. name .."",
              ["description"] = args,
              ["footer"] = {
                  ["text"] = "Made by sway",
              },
          }
      }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "Asshole Log", embeds = connect, avatar_url = "https://miro.medium.com/max/1000/1*MqFcwBk0Vr8UsFDVV-1Zfg.gif"}), { ['Content-Type'] = 'application/json' })
end



