local kit={
    {name="iron-ore",count=settings.global["ironOre"].value},
    {name="copper-ore",count=settings.global["copperOre"].value},
    {name="coal",count=settings.global["coal"].value},
    {name="stone",count=settings.global["stone"].value},
    {name="wood",count=settings.global["wood"].value}
}

-- Now lets get the player that just joined, and clear all of his inventory to replace with ours.
script.on_event(defines.events.on_player_created,function(param)
	local p=game.players[param.player_index]

	-- Now we will add all the items from our mod settings choices.
	for i,v in pairs(kit) do
		p.insert(v)
	end
end)