local skills = {
	[32384] = {id=SKILL_SWORD,voc=4},
	[32385] = {id=SKILL_AXE,voc=4},
	[32386] = {id=SKILL_CLUB,voc=4},
	[32387] = {id=SKILL_DISTANCE,voc=3,range=CONST_ANI_SIMPLEARROW},
	[32388] = {id=SKILL_MAGLEVEL,voc=2,range=CONST_ANI_ENERGY},
	[32389] = {id=SKILL_MAGLEVEL,voc=1,range=CONST_ANI_FIRE},
	[33524] = {id=SKILL_SWORD,voc=4},
	[33525] = {id=SKILL_AXE,voc=4},
	[33526] = {id=SKILL_CLUB,voc=4},
	[33527] = {id=SKILL_DISTANCE,voc=3,range=CONST_ANI_SIMPLEARROW},
	[33528] = {id=SKILL_MAGLEVEL,voc=2,range=CONST_ANI_ENERGY},
	[33529] = {id=SKILL_MAGLEVEL,voc=1,range=CONST_ANI_FIRE}
}

------- CONFIG -----//
local dummies = {36304, 32142,32147,32148,32143,32144,32145,32146,32149,36299,36300,36301,36302,36303}
local isTraining = 37
-- skillRate = 1.1*30 = 30 + 3 (10%) = 33x

local function start_train(pid,start_pos,itemid,fpos)
	local player = Player(pid)
	if player ~= nil then
		local pos_n = player:getPosition()
		if start_pos:getDistance(pos_n) == 0 and getTilePzInfo(pos_n) then
			if player:getItemCount(itemid) >= 1 then
				local exercise = player:getItemById(itemid,true)
				if exercise:isItem() then
					if exercise:hasAttribute(ITEM_ATTRIBUTE_CHARGES) then
						local charges_n = exercise:getAttribute(ITEM_ATTRIBUTE_CHARGES)
						if charges_n >= 1 then
							exercise:setAttribute(ITEM_ATTRIBUTE_CHARGES,(charges_n-1))

							local required = 0
							local toadd = 0
							local currently = 0
							local voc = player:getVocation()
								if skills[itemid].id == SKILL_MAGLEVEL then
									if(isInArray({1,2,5,6}, voc:getId())) then
											if player:getBaseMagicLevel() < 30 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.0933*required)
											elseif player:getBaseMagicLevel() >= 30 and player:getBaseMagicLevel() < 40 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.0933*required)
											elseif player:getBaseMagicLevel() >= 40 and player:getBaseMagicLevel() < 50 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.0933*required)
											elseif player:getBaseMagicLevel() >= 50 and player:getBaseMagicLevel() < 60 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.0933*required)
											elseif player:getBaseMagicLevel() >= 60 and player:getBaseMagicLevel() < 70 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.00733*required)
											elseif player:getBaseMagicLevel() >= 70 and player:getBaseMagicLevel() < 80 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.00733*required)
											elseif player:getBaseMagicLevel() >= 80 and player:getBaseMagicLevel() < 90 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.00733*required)
											elseif player:getBaseMagicLevel() >= 90 and player:getBaseMagicLevel() < 100 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.00733*required)
											elseif player:getBaseMagicLevel() >= 100 and player:getBaseMagicLevel() < 110 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.000633*required)
											elseif player:getBaseMagicLevel() >= 110 and player:getBaseMagicLevel() < 120 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.000633*required)
											elseif player:getBaseMagicLevel() >= 120 and player:getBaseMagicLevel() < 130 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.000633*required)
											elseif player:getBaseMagicLevel() >= 130 and player:getBaseMagicLevel() < 140 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.0000333*required)
											elseif player:getBaseMagicLevel() >= 140 and player:getBaseMagicLevel() < 150 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.0000333*required)
											elseif player:getBaseMagicLevel() >= 150 then
												required = voc:getRequiredManaSpent(player:getBaseMagicLevel() + 1)
												player:addManaSpent(0.0000333*required)
											end
									else

									end
								else
									if(isInArray({3,4,7,8}, voc:getId())) then
										if player:getSkillLevel(skills[itemid].id) < 30 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.0933*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 30 and player:getSkillLevel(skills[itemid].id) < 40 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.0933*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 40 and player:getSkillLevel(skills[itemid].id) < 50 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.0933*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 50 and player:getSkillLevel(skills[itemid].id) < 60 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.0933*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 60 and player:getSkillLevel(skills[itemid].id) < 70 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.00733*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 70 and player:getSkillLevel(skills[itemid].id) < 80 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.00733*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 80 and player:getSkillLevel(skills[itemid].id) < 90 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.00733*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 90 and player:getSkillLevel(skills[itemid].id) < 100 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.00733*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 100 and player:getSkillLevel(skills[itemid].id) < 110 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.000633*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 110 and player:getSkillLevel(skills[itemid].id) < 120 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.000633*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 120 and player:getSkillLevel(skills[itemid].id) < 130 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.000633*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 130 and player:getSkillLevel(skills[itemid].id) < 140 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.0000333*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 140 and player:getSkillLevel(skills[itemid].id) < 150 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.0000333*required))
										elseif player:getSkillLevel(skills[itemid].id) >= 150 then
										required = voc:getRequiredSkillTries(skills[itemid].id, player:getSkillLevel(skills[itemid].id)+1)
										player:addSkillTries(skills[itemid].id, (0.0000333*required))
									end
								end
							end
							
								fpos:sendMagicEffect(CONST_ME_HITAREA)
							if skills[itemid].range then
								pos_n:sendDistanceEffect(fpos, skills[itemid].range)
							end
							if charges_n == 1 then
								exercise:remove(1)
								return true
							end
							local training = addEvent(start_train, voc:getAttackSpeed(), pid,start_pos,itemid,fpos)
							player:setStorageValue(isTraining,1)
						else
							exercise:remove(1)
							player:sendCancelMessage("Your training weapon vanished.")
							stopEvent(training)
							player:setStorageValue(isTraining,0)
						end
					end
				end
			end
	else
		stopEvent(training)
		player:sendCancelMessage("Your training has stopped.")
		player:setStorageValue(isTraining,0)
		end
	else
		stopEvent(training)
		player:sendCancelMessage("Your training has stopped.")
		player:setStorageValue(isTraining,0)
	end
	return true
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local start_pos = player:getPosition()
	if target:isItem() then
		if isInArray(dummies,target:getId()) then
			if (isInArray({1,2,5,6}, player:getVocation():getId())) and skills[item.itemid].id ~= SKILL_MAGLEVEL then			
				stopEvent(training)
				player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Your vocation can't use this exercise item.")
				return false
			elseif (isInArray({3,7}, player:getVocation():getId())) and skills[item.itemid].id ~= SKILL_DISTANCE then			
				stopEvent(training)
				player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Your vocation can't use this exercise item.")
				return false
			elseif (isInArray({4,8}, player:getVocation():getId())) and ((skills[item.itemid].id ~= SKILL_SWORD) and (skills[item.itemid].id ~= SKILL_CLUB) and (skills[item.itemid].id ~= SKILL_AXE)) then			
				stopEvent(training)
				player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Your vocation can't use this exercise item.")
				return false
			end
			
			if player:getStorageValue(isTraining) == 1 then
				player:sendCancelMessage("You are already training.")
				return false
			end
			
			player:sendCancelMessage("You started training.")
			start_train(player:getId(),start_pos,item.itemid,target:getPosition())
			end
		end
	return true
end