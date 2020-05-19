local hotkey = hs.hotkey
local notify = hs.notify
local battery = hs.battery
local spotify = hs.spotify

-- This is going to show the wifi name in the menu bar
wifiWatcher = nil
function ssidChanged()
    local wifiName = hs.wifi.currentNetwork()
    if wifiName then
        wifiMenu:setTitle(wifiName)
    else
        wifiMenu:setTitle("Wifi OFF")
    end
end
wifiMenu = hs.menubar.newWithPriority(214783645)
ssidChanged()
wifiWatcher = hs.wifi.watcher.new(ssidChanged):start()

-- Here we are going to push some notifications about the battery status
if battery.percentage() == 50 then
    notify.new("")
        :title("Battery")
        :informativeText("Battery has reached 50%")
        :send()
end

if battery.percentage() == 20.5 then
    notify.new("")
        :title("Battery")
        :informativeText("Battery has reached 20%, find your charger")
        :send()
end

-- Now for some hotkeys that will open desiered applications
function open(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.addFromName(name):active()
        end
    end
end

hotkey.bind({"cmd"}, "T", open("Terminal"))
hotkey.bind({"cmd", "alt"}, "S", open("Sublime Text"))
hotkey.bind({"cmd", "alt"}, "C", open("Google Chrome"))
hotkey.bind({"cmd", "ctrl"}, "S", open("System Preferences"))
hotkey.bind({"cmd", "alt"}, "F", open("Finder"))
hotkey.bind({"cmd", "alt"}, "M", open("Messages"))

-- Now let's try to control Spotify
if (spotify.isPlaying()) then
     notify.new("")
                 :subTitle(spotify.getCurrentArtist())
                 :title(spotify.getCurrentTrack())
                 :send()
end

-- This could be cleaned up some, but it currently will print out the new song 
-- title on the change between song, should look into how to close the notification
-- after a second
while (spotify.isPlaying()) do
    if(spotify.getPosition() < 0.01) then
        notify.new("")
            :subTitle(spotify.getCurrentArtist())
            :title(spotify.getCurrentTrack())
            :send()
    end
end

hs.loadSpoon("HCalendar")
spoon.HCalendar:init()
spoon.HCalendar:createCanvas()
-- Here we are going to call the spoon that reloads the Hammerspoon config
hs.loadSpoon("ReloadConfiguration")
 82 spoon.ReloadConfiguration:start()
