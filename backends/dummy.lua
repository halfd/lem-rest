-- Dummy backend for lem-rest
-- Just stores stuff in a table
-- Only use for testing and the like since everything is lost on shutdown :(
-- C'est la vie

-- The Dummy backend uses a table as storage
local storage = {}

local dummy = {
    __metatable = storage,
    __index     = storage
}

-- CRUD
-- Create   - set
-- Read     - get
-- Update   - set
-- Delete   - remove

local function set(key, value)
    -- Set a key to a value in the storage.
    assert(value ~= nil, 'Cannot insert nil value')
    storage[key] = value
    return #storage
end

local function get(key)
    -- Return the value from the storage or nil if key not found
    local value = storage[key]
    return storage[key]
end

local function remove(key)
    assert(key ~= nil, 'Cannot remove nil key')
    storage[key] = nil
    return not storage[key]
end

local function filter(filter)
    -- Filter the results
    --
    -- The passed in function will be evaluated against the storage
    
    local returntable = {}

    for i, v in pairs(storage) do
        print(i, v)
    end
end

dummy.set = set
dummy.get = get
dummy.remove = remove
dummy.filter = filter

return dummy
