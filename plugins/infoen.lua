local function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
local jdat = json:decode(url)
if matches[1]:lower() == 'info' then
local info = '🇬🇧 Info For You\n> Your Name: '..msg.from.print_name..'\n> Your Id: '..msg.from.id..'\n> Your UserName: @'..msg.from.username..'\n> Your Telegram Link: telegram.me/'..msg.from.username..'\n\n🇬🇧 Info For Group\n> Group Name: '..msg.to.print_name..'\n>Group Id: '..msg.to.id..'\n\n🇬🇧 Info For Time\n> En Time: '..jdat.ENtime..'\n> En Data: '..jdat.ENdate..'\n> Ir Time: '..jdat.FAtime..'\n> Ir Data: '..jdat.FAdate
 return info
 end
end 
 return {
  patterns = {
 "^[#!/@$+]([Ii][Nn][Ff][Oo])$",
  },
  run = run
 }
