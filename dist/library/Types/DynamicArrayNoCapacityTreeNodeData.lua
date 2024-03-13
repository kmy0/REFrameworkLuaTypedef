---@meta


---@class DynamicArrayNoCapacityTreeNodeData
---@operator len:integer
local DynamicArrayNoCapacityTreeNodeData = {}


---@return MemoryView
function DynamicArrayNoCapacityTreeNodeData:as_memoryview() end

---@return boolean
function DynamicArrayNoCapacityTreeNodeData:empty() end

---@param fix_pointers? boolean
---@return BehaviorTreeNodeData?
function DynamicArrayNoCapacityTreeNodeData:emplace(fix_pointers) end

---@param value BehaviorTreeNodeData
---@return nil
function DynamicArrayNoCapacityTreeNodeData:push_back(value) end

---@return nil
function DynamicArrayNoCapacityTreeNodeData:pop_back() end

---@return integer
function DynamicArrayNoCapacityTreeNodeData:size() end

---@return integer
function DynamicArrayNoCapacityTreeNodeData:get_size() end

---@param index integer
---@return nil
function DynamicArrayNoCapacityTreeNodeData:erase(index) end

---@param force? boolean
---@return nil
function DynamicArrayNoCapacityTreeNodeData:clear(force) end
