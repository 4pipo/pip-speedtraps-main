local loadedFile = LoadResourceFile(GetCurrentResourceName(), "snapshots.json")
local snapshots = {}
snapshots = json.decode(loadedFile)
print(loadedFile, snapshots)

local function takeSpeedTrapSnapshot(self)
    local vehicles = Utils.getNearbyVehicles(self.coords, 40)
    for _, value in pairs(vehicles) do
        value.vehicleProperties = Utils.getVehicleProperties(value.vehicle)
    end
    snapshots[#snapshots+1] = vehicles
    TriggerServerEvent('zxn-speedtraps:server:SaveResourceFile', snapshots)
end

local function emptyMethod()
end

for index, value in ipairs(ClientConfig.SpeedTraps) do
    value.zone = trapZones.box({
        coords = value.coords,
        size = value.size,
        rotation = value.rotation,
        debug = value.debug,
        inside = emptyMethod,
        onEnter = takeSpeedTrapSnapshot,
        onExit = emptyMethod,
    })
end