---
--- Created by Alex.
--- DateTime: 29.10.2025 23:35
---

-- quarry/utils.lua
local M = {}

-- Определение чанка по координатам
function M.getChunk(x, z)
    return math.floor(x / 16), math.floor(z / 16)
end

-- Логирование
function M.log(msg)
    local prefix = os.date("%H:%M:%S")
    print("[" .. prefix .. "] " .. msg)
end

-- Проверка, в пределах ли чанка
function M.isInChunkBounds(pos, chunkX, chunkZ)
    local minX = chunkX * 16
    local maxX = minX + 15
    local minZ = chunkZ * 16
    local maxZ = minZ + 15

    return pos.x >= minX and pos.x <= maxX and pos.z >= minZ and pos.z <= maxZ
end

return M