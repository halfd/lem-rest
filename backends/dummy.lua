-- Dummy backend for lem-rest
-- Just stores stuff in a table
-- Only use for testing and the like since everything is lost on shutdown :(
-- Ce la vie

local Dummy = {}

local storage = {}

function Dummy:set(key, value)
    
end

function Dummy:get(key)
    -- Return the value from the storage or nil if key not found
    return storage[key]
end

function Dummy:remove(key)

end
