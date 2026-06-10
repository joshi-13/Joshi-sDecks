
--#region Atlases 

SMODS.Atlas {
    key = 'placeholders', 
    path = 'placeholderAssets.png',
    px = 71,
    py = 95,
}

--#endregion



--#region loading files

assert(SMODS.load_file("src/decks.lua"))()

--#endregion

