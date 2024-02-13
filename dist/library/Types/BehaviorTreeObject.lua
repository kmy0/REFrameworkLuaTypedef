---@meta


---@class BehaviorTreeObject
local BehaviorTreeObject = {}


---@return MemoryView
function BehaviorTreeObject:as_memoryview() end

---@return BehaviorTreeObjectData
function BehaviorTreeObject:get_data() end

---@param id integer
---@return BehaviorTreeNode?
function BehaviorTreeObject:get_node_by_id(id) end

---@param name string
---@return BehaviorTreeNode?
function BehaviorTreeObject:get_node_by_name(name) end

---@return DynamicArrayManagedObject
function BehaviorTreeObject:get_actions() end

---@return DynamicArrayNoCapacityTreeNode
function BehaviorTreeObject:get_nodes() end

---@return DynamicArrayManagedObject
function BehaviorTreeObject:get_conditions() end

---@return DynamicArrayManagedObject
function BehaviorTreeObject:get_transitions() end

---@return DynamicArrayManagedObject
function BehaviorTreeObject:get_selectors() end

---@param index integer
---@return BehaviorTreeNode?
function BehaviorTreeObject:get_node(index) end

---@return integer
function BehaviorTreeObject:get_node_count() end

---@param index integer
---@return REManagedObject?
function BehaviorTreeObject:get_action(index) end

---@param index integer
---@return REManagedObject?
function BehaviorTreeObject:get_unloaded_action(index) end

---@param index integer
---@return REManagedObject?
function BehaviorTreeObject:get_transition(index) end

---@param index integer
---@return REManagedObject?
function BehaviorTreeObject:get_condition(index) end

---@return integer
function BehaviorTreeObject:get_action_count() end

---@return integer
function BehaviorTreeObject:get_condition_count() end

---@return integer
function BehaviorTreeObject:get_transition_count() end

---@return integer
function BehaviorTreeObject:get_unloaded_action_count() end

---@return integer
function BehaviorTreeObject:get_static_action_count() end

---@return integer
function BehaviorTreeObject:get_static_condition_count() end

---@return integer
function BehaviorTreeObject:get_static_transition_count() end

---@param old_start integer
---@param old_end integer
---@param new_nodes DynamicArrayNoCapacityTreeNode
---@return nil
function BehaviorTreeObject:relocate(old_start, old_end, new_nodes) end

---@return REManagedObject?
function BehaviorTreeObject:get_uservariable_hub() end
