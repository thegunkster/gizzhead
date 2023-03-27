function leviticus:onItemSpawn(entityType, variant, subType, position, velocity, spawner, seed)
    print("1")
    
    if entityType ~= EntityType.ENTITY_PICKUP or variant ~= PickupVariant.PICKUP_COLLECTIBLE then return end
    local roomType = Game():GetRoom():GetType()
    if roomType ~= RoomType.ROOM_BOSS then return end
    
    print("2")
    
    local ItemPool = Game():GetItemPool()
    
    local randomAngelItemID = ItemPool:GetCollectible(RoomType.ROOM_ANGEL, false )
    
    return {EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, randomAngelItemID, seed}
    end
    
    leviticus:AddCallback(ModCallbacks.MC_PRE_ENTITY_SPAWN, leviticus.onItemSpawn)