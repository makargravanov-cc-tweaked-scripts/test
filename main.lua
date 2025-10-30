---
--- Created by Alex.
--- DateTime: 29.10.2025 23:34
---

turtles = {
    {id = 1, fuel = 1, pos = {x = 1, y = 1, z = 1}},
    {id = 2, fuel = 2, pos = {x = 2, y = 2, z = 2}},
    {id = 3, fuel = 3, pos = {x = 3, y = 3, z = 3}}
}

function main()
    for _, turtle in ipairs(turtles) do
        print("Id = {}, fuel = {}, pos = {}, {}, {}",turtle.id, turtle.fuel, turtle.pos.x, turtle.pos.y, turtle.pos.z)
    end
end