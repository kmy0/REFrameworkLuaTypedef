---@meta


---@class DynamicArrayNoCapacityInt32
---@operator len:integer
local DynamicArrayNoCapacityInt32 = {}


---@return MemoryView
function DynamicArrayNoCapacityInt32:as_memoryview() end

---@return boolean
function DynamicArrayNoCapacityInt32:empty() end

---@param fix_pointers? boolean
---@return integer?
function DynamicArrayNoCapacityInt32:emplace(fix_pointers) end

---@param value integer
---@return nil
function DynamicArrayNoCapacityInt32:push_back(value) end

---@return nil
function DynamicArrayNoCapacityInt32:pop_back() end

---@return integer
function DynamicArrayNoCapacityInt32:size() end

---@return integer
function DynamicArrayNoCapacityInt32:get_size() end

---@param index integer
---@return nil
function DynamicArrayNoCapacityInt32:erase(index) end

---@param force? boolean
---@return nil
function DynamicArrayNoCapacityInt32:clear(force) end
