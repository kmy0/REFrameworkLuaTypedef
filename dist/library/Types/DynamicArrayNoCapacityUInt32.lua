---@meta


---@class DynamicArrayNoCapacityUInt32
---@operator len:integer
local DynamicArrayNoCapacityUInt32 = {}


---@return MemoryView
function DynamicArrayNoCapacityUInt32:as_memoryview() end

---@return boolean
function DynamicArrayNoCapacityUInt32:empty() end

---@param fix_pointers? boolean
---@return integer?
function DynamicArrayNoCapacityUInt32:emplace(fix_pointers) end

---@param value integer
---@return nil
function DynamicArrayNoCapacityUInt32:push_back(value) end

---@return nil
function DynamicArrayNoCapacityUInt32:pop_back() end

---@return integer
function DynamicArrayNoCapacityUInt32:size() end

---@return integer
function DynamicArrayNoCapacityUInt32:get_size() end

---@param index integer
---@return nil
function DynamicArrayNoCapacityUInt32:erase(index) end

---@param force? boolean
---@return nil
function DynamicArrayNoCapacityUInt32:clear(force) end
