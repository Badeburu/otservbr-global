dofile('data/lib/tasklib.lua')
local event = CreatureEvent("TaskNova")
local raceTypes = {
	[1] = "venom",
    [2] = "blood",
    [3] = "undead",
    [4] = "fire",
    [5] = "energy",
	}


function event.onKill(creature, target)
	local t1 = creature:getStorageValue(storages.firsttask)
	local t2 = creature:getStorageValue(storages.secondtask)	
	if (t1 > 0 or t2 > 0) and target and type(target:getMaster()) == 'nil' then
		if t1 > 0 and tasks[t1] and (isInArray(tasks[t1].mob, target:getName()) or tasks[t1].mob[1]:match("%a+") == raceTypes[target:getType():getRace()]) then
			local store = creature:getStorageValue(storages.countfirst)
			if store < tasks[t1].count then
				creature:setStorageValue(storages.countfirst, store + 1)
				if store + 1 == tasks[t1].count then
					creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You finished your task.")
				elseif store + 1 <= tasks[t1].count then
					creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Task "..target:getName().." ["..store + 1 .."/"..tasks[t1].count.."]")
				end
			end
		elseif t2 > 0 and tasks[t2] and (isInArray(tasks[t2].mob, target:getName()) or tasks[t2].mob[1]:match("%a+") == raceTypes[target:getType():getRace()]) then
			local store = creature:getStorageValue(storages.countsecond)
			if store < tasks[t2].count then
				creature:setStorageValue(storages.countsecond, store + 1)
				if store + 1 == tasks[t2].count then
					creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You finished the task of "..target:getName()..".")
				elseif store + 1 <= tasks[t2].count then
					creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Task "..target:getName().."  ["..store + 1 .."/"..tasks[t2].count.."]")
				end
			end
		end
	end
return true
end
event:register()

local login = CreatureEvent("RegisterTask")
function login.onLogin(creature)
    creature:registerEvent("TaskNova")
    return true
end
login:register()