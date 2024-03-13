---@meta


---@class DynamicArrayNoCapacityUInt8
---@operator len:integer
local DynamicArrayNoCapacityUInt8 = {}


---@return MemoryView
function DynamicArrayNoCapacityUInt8:as_memoryview() end

---@return boolean
function DynamicArrayNoCapacityUInt8:empty() end

---@param fix_pointers? boolean
---@return integer
function DynamicArrayNoCapacityUInt8:emplace(fix_pointers) end

---@param value integer
---@return nil
function DynamicArrayNoCapacityUInt8:push_back(value) end

---@return nil
function DynamicArrayNoCapacityUInt8:pop_back() end

---@return integer
function DynamicArrayNoCapacityUInt8:size() end

---@return integer
function DynamicArrayNoCapacityUInt8:get_size() end

---@param index integer
---@return nil
function DynamicArrayNoCapacityUInt8:erase(index) end

---@param force? boolean
---@return nil
function DynamicArrayNoCapacityUInt8:clear(force) end
