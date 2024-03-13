---@meta


---@class DynamicArrayNoCapacityTreeNode
---@operator len:integer
local DynamicArrayNoCapacityTreeNode = {}


---@return MemoryView
function DynamicArrayNoCapacityTreeNode:as_memoryview() end

---@return boolean
function DynamicArrayNoCapacityTreeNode:empty() end

---@param fix_pointers? boolean
---@return BehaviorTreeNode?
function DynamicArrayNoCapacityTreeNode:emplace(fix_pointers) end

---@param value BehaviorTreeNode
---@return nil
function DynamicArrayNoCapacityTreeNode:push_back(value) end

---@return nil
function DynamicArrayNoCapacityTreeNode:pop_back() end

---@return integer
function DynamicArrayNoCapacityTreeNode:size() end

---@return integer
function DynamicArrayNoCapacityTreeNode:get_size() end

---@param index integer
---@return nil
function DynamicArrayNoCapacityTreeNode:erase(index) end

---@param force? boolean
---@return nil
function DynamicArrayNoCapacityTreeNode:clear(force) end
