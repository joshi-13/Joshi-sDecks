
--#region Atlases 

SMODS.Atlas {
    key = 'placeholders', 
    path = 'placeholderAssets.png',
    px = 71,
    py = 95,
}

SMODS.Atlas {
    key = 'rarity', 
    path = 'rarityDecks.png',
    px = 71,
    py = 95,
}


--#endregion



--#region loading files

local decks_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/decks")
for _, file in ipairs(decks_src) do
    assert(SMODS.load_file("src/decks/" .. file))()
end

--#endregion

