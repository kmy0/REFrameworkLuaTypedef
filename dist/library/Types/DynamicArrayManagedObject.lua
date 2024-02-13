---@meta


---@class DynamicArrayManagedObject
---@operator len:integer
local DynamicArrayManagedObject = {}


---@return MemoryView
function DynamicArrayManagedObject:as_memoryview() end

---@return boolean
function DynamicArrayManagedObject:empty() end

---@return REManagedObject?
function DynamicArrayManagedObject:emplace() end

---@param value REManagedObject
---@return nil
function DynamicArrayManagedObject:push_back(value) end

---@return integer
function DynamicArrayManagedObject:size() end

---@return integer
function DynamicArrayManagedObject:get_size() end

---@param index integer
---@return nil
function DynamicArrayManagedObject:erase(index) end

---@return nil
function DynamicArrayManagedObject:clear() end
