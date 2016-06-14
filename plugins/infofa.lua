local function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
local jdat = json:decode(url)
if matches[1]:lower() == 'مشخصات' then
local info = '🇬🇧 مشخصات برای شما\n> نام شما: '..msg.from.print_name..'\n> ایدی شما: '..msg.from.id..'\n> یوزر نیم شما: @'..msg.from.username..'\n> لینک تلگرامی شما: telegram.me/'..msg.from.username..'\n\n🇬🇧 مشخصات برای گروه\n> نام گروه: '..msg.to.print_name..'\n> ایدی گروه: '..msg.to.id..'\n\n🇬🇧 مشخصات برای زمان\n> زمان خارج از ایران: '..jdat.ENtime..'\n> تاریخ خارج از ایران: '..jdat.ENdate..'\n> زمان ایران: '..jdat.FAtime..'\n> تاریخ ایران: '..jdat.FAdate
 return info
 end
 
 return {
  patterns = {
 "^(مشخصات)$",
  },
  run = run
 }
