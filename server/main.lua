
local GetPlayers = GetPlayers

for _, playerId in ipairs(GetPlayers()) do

end

RegisterNetEvent('pip-speedtraps:server:SaveResourceFile', function(snapshots)
    SaveResourceFile(GetCurrentResourceName(), "snapshots.json", json.encode(snapshots), -1)
end)