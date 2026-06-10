local decks_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/decks")
for _, file in ipairs(decks_src) do
    assert(SMODS.load_file("jokers/" .. file)) ()
end
