local woeTime = GlobalEvent("woeTime")
function woeTime.onTime(interval)
    if os.date("%H:%M") == woe.days[os.date("%A")] then
        woe.queueEvent(woe.timeDelay+1)
    end
end
woeTime:time("15:10:00")
woeTime:register()