local kit={}
if settings.global["ironOre"].value>0 then
    table.insert(kit,{name="iron-ore",count=settings.global["ironOre"].value})
end
if settings.global["copperOre"].value>0 then
    table.insert(kit,{name="copper-ore",count=settings.global["copperOre"].value})
end
if settings.global["coal"].value>0 then
    table.insert(kit,{name="coal",count=settings.global["coal"].value})
end
if settings.global["stone"].value>0 then
    table.insert(kit,{name="stone",count=settings.global["stone"].value})
end
if settings.global["wood"].value>0 then
    table.insert(kit,{name="wood",count=settings.global["wood"].value})
end

-- Now lets get the player that just joined, and clear all of his inventory to replace with ours.
script.on_event(defines.events.on_player_created,function(param)
	local p=game.players[param.player_index]

	-- Now we will add all the items from our mod settings choices.
	for i,v in pairs(kit) do
        p.insert(v)
	end
end)