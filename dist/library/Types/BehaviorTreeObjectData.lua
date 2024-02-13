---@meta


---@class BehaviorTreeObjectData
local BehaviorTreeObjectData = {}


---@return MemoryView
function BehaviorTreeObjectData:as_memoryview() end

---@return DynamicArrayNoCapacityTreeNodeData
function BehaviorTreeObjectData:get_nodes() end

---@return DynamicArrayManagedObject
function BehaviorTreeObjectData:get_static_actions() end

---@return DynamicArrayManagedObject
function BehaviorTreeObjectData:get_static_conditions() end

---@return DynamicArrayManagedObject
function BehaviorTreeObjectData:get_static_transitions() end

---@return DynamicArrayManagedObject
function BehaviorTreeObjectData:get_expression_tree_conditions() end

---@return DynamicArrayNoCapacityUInt8
function BehaviorTreeObjectData:get_action_methods() end

---@return DynamicArrayNoCapacityUInt8
function BehaviorTreeObjectData:get_static_action_methods() end
