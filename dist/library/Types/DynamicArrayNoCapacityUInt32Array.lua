---@meta


---@class DynamicArrayNoCapacityUInt32Array
---@operator len:integer
local DynamicArrayNoCapacityUInt32Array = {}


---@return MemoryView
function DynamicArrayNoCapacityUInt32Array:as_memoryview() end

---@return boolean
function DynamicArrayNoCapacityUInt32Array:empty() end

---@param fix_pointers? boolean
---@return DynamicArrayNoCapacityUInt32?
function DynamicArrayNoCapacityUInt32Array:emplace(fix_pointers) end

---@param value DynamicArrayNoCapacityUInt32
---@return nil
function DynamicArrayNoCapacityUInt32Array:push_back(value) end

---@return nil
function DynamicArrayNoCapacityUInt32Array:pop_back() end

---@return integer
function DynamicArrayNoCapacityUInt32Array:size() end

---@return integer
function DynamicArrayNoCapacityUInt32Array:get_size() end

---@param index integer
---@return nil
function DynamicArrayNoCapacityUInt32Array:erase(index) end

---@param force? boolean
---@return nil
function DynamicArrayNoCapacityUInt32Array:clear(force) end
